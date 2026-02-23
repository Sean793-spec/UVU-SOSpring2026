using System.Collections;
using UnityEngine;
using UnityEngine.AI;

[RequireComponent(typeof(NavMeshAgent))]
public class AIMovement : MonoBehaviour
{
    // Public tuning fields
    public float roamRadius = 10f;             // radius around start position where AI will pick targets
    public float moveSpeed = 3f;               // movement speed (used for NavMeshAgent.speed or transform fallback)
    public float stoppingDistance = 0.5f;      // how close is "arrived"
    public float minPause = 1f;                // min pause time when arrived
    public float maxPause = 3f;                // max pause time when arrived
    public float rotationSpeed = 5f;           // how fast the AI rotates to face movement (affects transform fallback; mapped to agent.angularSpeed)
    public bool startRoamingOnStart = true;    // whether roaming starts automatically

    // New: allow specifying a custom roam center or a box area
    [Tooltip("Optional: use a Transform as the center of the roam area. If null or disabled, the object's start position is used.")]
    public Transform roamCenterTransform;
    [Tooltip("When enabled, use a rectangular (XZ) box of size Box Size around the chosen center instead of a circular radius.")]
    public bool useBoxArea;
    [Tooltip("Size of the box (X and Z used). The box is centered on the chosen center.")]
    public Vector3 boxSize = new Vector3(10f, 0f, 10f);

    // Collision response settings
    [Tooltip("If true, the AI will pick a new target when it collides with something.")]
    public bool reactToCollisions = true;
    [Tooltip("Minimum seconds between collision responses to avoid spamming new targets.")]
    public float collisionResponseCooldown = 1f;
    [Tooltip("When sampling NavMesh for a target, how far to search for a nearby NavMesh point.")]
    public float navMeshSampleDistance = 2f;
    [Tooltip("How many times to attempt sampling a NavMesh position for a randomly chosen point.")]
    public int navMeshSampleAttempts = 3;

    // New: rotation behavior on collision
    [Header("Collision Rotation")]
    [Tooltip("If true, the AI will rotate to face the new target when a collision occurs.")]
    public bool rotateOnCollision = true;
    [Tooltip("Duration (seconds) of the facing rotation on collision. Set to 0 for an instant snap.")]
    public float collisionRotateDuration = 0.4f;

    // Internal state
    private Vector3 _startPosition;
    private Vector3 _targetPosition;
    private Coroutine _roamCoroutine;
    private bool _hasTarget;
    private float _lastCollisionTime = -Mathf.Infinity;

    // NavMeshAgent reference
    private NavMeshAgent _agent;
    private Coroutine _tempMoveCoroutine;
    // Rotation coroutine handle used for collision rotation
    private Coroutine _rotationCoroutine;
    // Move-and-lock coroutine handle used by external callers (e.g., Chair)
    private Coroutine _moveAndLockCoroutine;

    void Start()
    {
        // store the initial center of roaming
        _startPosition = transform.position;

        // Get or add NavMeshAgent (RequireComponent ensures one exists in editor, but at runtime it might be missing)
        _agent = GetComponent<NavMeshAgent>();
        if (_agent == null)
        {
            _agent = gameObject.AddComponent<NavMeshAgent>();
        }

        // Configure agent defaults based on public fields
        ApplyAgentSettings();

        if (startRoamingOnStart)
            StartRoaming();
    }

    void ApplyAgentSettings()
    {
        if (_agent == null) return;
        _agent.speed = moveSpeed;
        _agent.stoppingDistance = stoppingDistance;
        // Map rotationSpeed to angularSpeed (degrees/sec). The mapping below is subjective; adjust to taste.
        _agent.angularSpeed = Mathf.Clamp(rotationSpeed * 120f, 1f, 1000f);
        _agent.updateRotation = true;
        _agent.updatePosition = true;
    }

    // Public controls
    public void StartRoaming()
    {
        if (_roamCoroutine != null)
            StopCoroutine(_roamCoroutine);
        _roamCoroutine = StartCoroutine(RoamRoutine());
    }

    public void StopRoaming()
    {
        if (_roamCoroutine != null)
        {
            StopCoroutine(_roamCoroutine);
            _roamCoroutine = null;
        }
        _hasTarget = false;
        if (_agent != null && _agent.hasPath)
            _agent.ResetPath();
    }

    IEnumerator RoamRoutine()
    {
        while (true)
        {
            // Determine center for roaming: either a provided transform or the stored start position
            Vector3 center = (roamCenterTransform != null) ? roamCenterTransform.position : _startPosition;

            // Pick a random target either inside the box area or inside the circle radius
            _targetPosition = GetRandomTarget(center);

            _hasTarget = true;

            // If agent is present and on a NavMesh, use SetDestination and wait for arrival
            if (_agent != null && _agent.isOnNavMesh)
            {
                ApplyAgentSettings(); // keep agent in sync with inspector values

                // Try to set destination
                _agent.SetDestination(_targetPosition);

                // Wait for path calculation
                while (_agent.pathPending)
                    yield return null;

                // If the path is invalid, fall back to transform movement
                if (_agent.pathStatus == NavMeshPathStatus.PathInvalid)
                {
                    // fallback to transform-based movement for this target
                    yield return StartCoroutine(TransformMoveToTarget(_targetPosition));
                }
                else
                {
                    // Wait until agent reaches destination (or no path)
                    while ((_agent.hasPath || _agent.pathPending) && _agent.remainingDistance > Mathf.Max(0.01f, stoppingDistance))
                    {
                        yield return null;
                    }
                }
            }
            else
            {
                // No agent or not on NavMesh: fallback to simple transform-based movement
                yield return StartCoroutine(TransformMoveToTarget(_targetPosition));
            }

            // Arrived: stop and pause for a bit before choosing a new target
            _hasTarget = false;
            float pause = Random.Range(minPause, maxPause);
            yield return new WaitForSeconds(pause);
        }
    }

    // New helper: pick a random target then (if possible) snap it to the NavMesh
    private Vector3 GetRandomTarget(Vector3 center)
    {
        Vector3 candidate;
        if (useBoxArea)
        {
            float halfX = boxSize.x * 0.5f;
            float halfZ = boxSize.z * 0.5f;
            float rx = Random.Range(-halfX, halfX);
            float rz = Random.Range(-halfZ, halfZ);
            candidate = center + new Vector3(rx, 0f, rz);
        }
        else
        {
            Vector2 rand = Random.insideUnitCircle * roamRadius;
            candidate = center + new Vector3(rand.x, 0f, rand.y);
        }

        // If agent and NavMesh available, try snapping candidate to NavMesh
        if (_agent != null && _agent.isOnNavMesh)
        {
            NavMeshHit hit;
            for (int i = 0; i < navMeshSampleAttempts; i++)
            {
                if (NavMesh.SamplePosition(candidate, out hit, navMeshSampleDistance, NavMesh.AllAreas))
                {
                    return hit.position;
                }

                // slightly jitter candidate and try again
                Vector2 jitter = Random.insideUnitCircle * (navMeshSampleDistance * 0.5f);
                candidate = center + new Vector3(jitter.x, 0f, jitter.y);
            }
        }

        // If sampling failed (or agent not on NavMesh), return candidate anyway.
        return candidate;
    }

    // Collision handling: pick a new target when colliding
    private void OnCollisionEnter(Collision collision)
    {
        // reference parameter to avoid unused-parameter analyzer warning
        _ = collision;

        if (!reactToCollisions) return;
        if (Time.time - _lastCollisionTime < collisionResponseCooldown) return;
        _lastCollisionTime = Time.time;
        HandleCollisionResponse();
    }

    private void OnTriggerEnter(Collider other)
    {
        // reference parameter to avoid unused-parameter analyzer warning
        _ = other;

        if (!reactToCollisions) return;
        if (Time.time - _lastCollisionTime < collisionResponseCooldown) return;
        _lastCollisionTime = Time.time;
        HandleCollisionResponse();
    }

    private void HandleCollisionResponse()
    {
        // choose a new random target near the roam center
        Vector3 center = (roamCenterTransform != null) ? roamCenterTransform.position : _startPosition;
        Vector3 newTarget = GetRandomTarget(center);

        // compute horizontal direction to the new target
        Vector3 dir = newTarget - transform.position;
        dir.y = 0f;

        // If rotation on collision is enabled, rotate first (smooth or snap depending on duration)
        if (rotateOnCollision && dir.sqrMagnitude > 0.0001f)
        {
            // If a rotation coroutine is already running, stop it so we start fresh
            if (_rotationCoroutine != null)
            {
                StopCoroutine(_rotationCoroutine);
                _rotationCoroutine = null;
            }

            // If we have a NavMeshAgent on the NavMesh, rotate and then set destination. Otherwise rotate and do fallback move.
            if (_agent != null && _agent.isOnNavMesh)
            {
                _rotationCoroutine = StartCoroutine(RotateThenSetAgentDestination(newTarget, collisionRotateDuration));
                return; // rotation coroutine will set destination/move after rotating
            }
            else
            {
                // Fallback: rotate, then interrupt roaming and move directly
                _rotationCoroutine = StartCoroutine(RotateThenTemporaryMove(newTarget, collisionRotateDuration));
                return;
            }
        }

        // If we reach here, either rotation is disabled or direction is degenerate.
        // If agent is available and on NavMesh, set destination immediately
        if (_agent != null && _agent.isOnNavMesh)
        {
            _agent.ResetPath();
            _agent.SetDestination(newTarget);
        }
        else
        {
            // Fallback: interrupt the roaming coroutine and move directly to newTarget, then resume roaming
            if (_roamCoroutine != null)
            {
                StopCoroutine(_roamCoroutine);
                _roamCoroutine = null;
            }

            if (_tempMoveCoroutine != null)
            {
                StopCoroutine(_tempMoveCoroutine);
                _tempMoveCoroutine = null;
            }

            _tempMoveCoroutine = StartCoroutine(TemporaryTransformMoveThenResume(newTarget));
        }
    }

    // Smoothly rotate the transform to face the target over "duration" seconds.
    // If duration is zero or negative, snap immediately.
    private IEnumerator RotateTowards(Vector3 targetWorldPos, float duration)
    {
        Vector3 toTarget = targetWorldPos - transform.position;
        toTarget.y = 0f;
        if (toTarget.sqrMagnitude <= 0.0001f)
            yield break;

        Quaternion startRot = transform.rotation;
        Quaternion endRot = Quaternion.LookRotation(toTarget);

        if (duration <= 0f)
        {
            transform.rotation = endRot;
            yield break;
        }

        float t = 0f;
        while (t < duration)
        {
            t += Time.deltaTime;
            float frac = Mathf.Clamp01(t / duration);
            transform.rotation = Quaternion.Slerp(startRot, endRot, frac);
            yield return null;
        }

        transform.rotation = endRot;
    }

    // Helper coroutine: disable agent rotation, rotate, then set destination and re-enable rotation.
    private IEnumerator RotateThenSetAgentDestination(Vector3 dest, float duration)
    {
        if (_agent != null)
        {
            bool prevUpdateRot = _agent.updateRotation;
            _agent.updateRotation = false;

            yield return StartCoroutine(RotateTowards(dest, duration));

            // restore agent rotation control and set destination
            _agent.updateRotation = prevUpdateRot;
            _agent.ResetPath();
            _agent.SetDestination(dest);
        }
        else
        {
            // fallback just rotate then set destination using transform movement
            yield return StartCoroutine(RotateTowards(dest, duration));
            if (_roamCoroutine != null)
            {
                StopCoroutine(_roamCoroutine);
                _roamCoroutine = null;
            }
            if (_tempMoveCoroutine != null)
            {
                StopCoroutine(_tempMoveCoroutine);
                _tempMoveCoroutine = null;
            }
            _tempMoveCoroutine = StartCoroutine(TemporaryTransformMoveThenResume(dest));
        }

        _rotationCoroutine = null;
    }

    // Helper coroutine for fallback: rotate then start a temporary transform move
    private IEnumerator RotateThenTemporaryMove(Vector3 dest, float duration)
    {
        yield return StartCoroutine(RotateTowards(dest, duration));

        if (_roamCoroutine != null)
        {
            StopCoroutine(_roamCoroutine);
            _roamCoroutine = null;
        }

        if (_tempMoveCoroutine != null)
        {
            StopCoroutine(_tempMoveCoroutine);
            _tempMoveCoroutine = null;
        }

        _tempMoveCoroutine = StartCoroutine(TemporaryTransformMoveThenResume(dest));
        _rotationCoroutine = null;
    }

    // Fallback movement when no NavMeshAgent or invalid path
    IEnumerator TransformMoveToTarget(Vector3 target)
    {
        while (Vector3.Distance(new Vector3(transform.position.x, 0f, transform.position.z), new Vector3(target.x, 0f, target.z)) > stoppingDistance)
        {
            // compute direction on XZ plane
            Vector3 direction = target - transform.position;
            direction.y = 0f;

            if (direction.sqrMagnitude <= 0.0001f)
                break;

            // rotate smoothly toward move direction
            Quaternion desired = Quaternion.LookRotation(direction);
            transform.rotation = Quaternion.Slerp(transform.rotation, desired, rotationSpeed * Time.deltaTime);

            // move forward along horizontal direction
            transform.position += direction.normalized * moveSpeed * Time.deltaTime;

            yield return null;
        }

        yield break;
    }

    // Temporary move used when we interrupt roaming (transform fallback).
    // After reaching the destination, resume the roaming coroutine.
    private IEnumerator TemporaryTransformMoveThenResume(Vector3 dest)
    {
        // perform the transform-based move
        yield return StartCoroutine(TransformMoveToTarget(dest));

        // clear temp handle
        _tempMoveCoroutine = null;

        // small pause before resuming roaming (helps avoid immediate re-collisions)
        yield return new WaitForSeconds(Random.Range(minPause, maxPause));

        // resume roaming
        if (_roamCoroutine != null)
            StopCoroutine(_roamCoroutine);
        _roamCoroutine = StartCoroutine(RoamRoutine());
    }

    // Public API: move the AI to a world position or transform and lock it there for lockSeconds
    // After the lock time elapses, the AI will resume roaming.
    public void MoveToAndLock(Transform targetTransform, float lockSeconds)
    {
        if (targetTransform == null) return;
        MoveToAndLock(targetTransform.position, lockSeconds);
    }

    public void MoveToAndLock(Vector3 worldPosition, float lockSeconds)
    {
        // Cancel any existing move-and-lock action so the latest call wins
        if (_moveAndLockCoroutine != null)
            StopCoroutine(_moveAndLockCoroutine);
        _moveAndLockCoroutine = StartCoroutine(MoveToAndLockCoroutine(worldPosition, lockSeconds));
    }

    private IEnumerator MoveToAndLockCoroutine(Vector3 position, float lockSeconds)
    {
        // Stop roaming and any temporary movement
        if (_roamCoroutine != null)
        {
            StopCoroutine(_roamCoroutine);
            _roamCoroutine = null;
        }

        if (_tempMoveCoroutine != null)
        {
            StopCoroutine(_tempMoveCoroutine);
            _tempMoveCoroutine = null;
        }

        // If we have a NavMeshAgent and it's on the NavMesh, use it to move to the chair
        if (_agent != null && _agent.isOnNavMesh)
        {
            // Ensure agent uses inspector configured speed
            ApplyAgentSettings();
            _agent.isStopped = false;
            _agent.ResetPath();
            _agent.SetDestination(position);

            // Wait for path calculation / travel with timeout
            float travelTimeout = Mathf.Max(5f, lockSeconds + 5f);
            float start = Time.time;
            while ((_agent.pathPending || _agent.hasPath) && _agent.remainingDistance > Mathf.Max(0.01f, stoppingDistance))
            {
                if (Time.time - start > travelTimeout)
                    break; // prevent getting stuck
                yield return null;
            }

            // Arrived or timed out: stop the agent and hold position for lockSeconds
            _agent.isStopped = true;
            // Wait while locked
            yield return new WaitForSeconds(lockSeconds);

            // Resume agent movement and roaming
            _agent.isStopped = false;
            _moveAndLockCoroutine = null;
            StartRoaming();
            yield break;
        }

        // Fallback: no agent or not on NavMesh — use transform movement then wait
        yield return StartCoroutine(TransformMoveToTarget(position));

        // When arrived, stay for lockSeconds
        yield return new WaitForSeconds(lockSeconds);

        _moveAndLockCoroutine = null;
        StartRoaming();
    }

}
