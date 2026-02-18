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

    // Internal state
    private Vector3 _startPosition;
    private Vector3 _targetPosition;
    private Coroutine _roamCoroutine;
    private bool _hasTarget;
    private float _lastCollisionTime = -Mathf.Infinity;

    // NavMeshAgent reference
    private NavMeshAgent _agent;
    private Coroutine _tempMoveCoroutine;

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

    private IEnumerator TemporaryTransformMoveThenResume(Vector3 target)
    {
        // Move to the given target (fallback), then wait a bit and resume roaming
        yield return StartCoroutine(TransformMoveToTarget(target));
        float pause = Random.Range(minPause, maxPause);
        yield return new WaitForSeconds(pause);
        StartRoaming();
    }

    // Fallback movement when no NavMeshAgent or invalid path
    IEnumerator TransformMoveToTarget(Vector3 target)
    {
        while (Vector3.Distance(new Vector3(transform.position.x, 0f, transform.position.z), new Vector3(target.x, 0f, target.z)) > stoppingDistance)
        {
            // compute direction on XZ plane
            Vector3 direction = target - transform.position;
            direction.y = 0f;

            if (direction.sqrMagnitude > 0.001f)
            {
                // rotate smoothly towards movement direction
                Quaternion toRotation = Quaternion.LookRotation(direction);
                transform.rotation = Quaternion.Slerp(transform.rotation, toRotation, rotationSpeed * Time.deltaTime);

                // move forward
                transform.position += transform.forward * (moveSpeed * Time.deltaTime);
            }
            else
            {
                break;
            }

            yield return null;
        }
    }

    // Optional: change roam center at runtime
    public void SetRoamCenter(Vector3 worldPosition)
    {
        _startPosition = worldPosition;
    }

    // Helper API: allow runtime changes to roaming parameters
    public void SetRoamRadius(float radius)
    {
        roamRadius = Mathf.Max(0f, radius);
    }

    public void SetUseBoxArea(bool use)
    {
        useBoxArea = use;
    }

    public void SetBoxSize(Vector3 size)
    {
        boxSize = new Vector3(Mathf.Max(0.01f, size.x), 0f, Mathf.Max(0.01f, size.z));
    }

    public void SetRoamCenterTransform(Transform t)
    {
        roamCenterTransform = t;
    }

    // Editor-time validation (keeps inspector values sensible)
    private void OnValidate()
    {
        roamRadius = Mathf.Max(0f, roamRadius);
        stoppingDistance = Mathf.Max(0f, stoppingDistance);
        moveSpeed = Mathf.Max(0f, moveSpeed);
        rotationSpeed = Mathf.Max(0f, rotationSpeed);
        minPause = Mathf.Max(0f, minPause);
        maxPause = Mathf.Max(minPause, maxPause);
        boxSize.x = Mathf.Max(0.01f, boxSize.x);
        boxSize.z = Mathf.Max(0.01f, boxSize.z);

        // If agent exists in editor, keep some values in sync
        if (_agent != null)
            ApplyAgentSettings();
    }

    // Debug drawing in editor
    private void OnDrawGizmosSelected()
    {
        Gizmos.color = Color.green;
        Vector3 center = Application.isPlaying ? _startPosition : transform.position;

        // If a roamCenterTransform is assigned, show it as the center in editor
        if (roamCenterTransform != null)
            center = roamCenterTransform.position;

        if (useBoxArea)
        {
            Gizmos.DrawWireCube(center, new Vector3(boxSize.x, 0.1f, boxSize.z));
        }
        else
        {
            Gizmos.DrawWireSphere(center, roamRadius);
        }

        if (_hasTarget)
        {
            Gizmos.color = Color.red;
            Gizmos.DrawSphere(_targetPosition, 0.2f);
            Gizmos.DrawLine(center, _targetPosition);
        }
    }
}
