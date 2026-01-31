using System.Collections;
using UnityEngine;

public class Pickupable : MonoBehaviour
{
    [Tooltip("Optional id for inventory or logic")]
    public string itemId;

    [Tooltip("Optional amount (e.g. stack size)")]
    public int amount = 1;

    [Tooltip("If true the object will be destroyed when picked")]
    public bool destroyOnPickup = true;

    Vector3 initialPosition;
    Quaternion initialRotation;
    Transform initialParent;

    Rigidbody rb;
    Collider[] colliders;

    Coroutine returnCoroutine;

    void Awake()
    {
        initialPosition = transform.position;
        initialRotation = transform.rotation;
        initialParent = transform.parent;

        rb = GetComponent<Rigidbody>();
        colliders = GetComponentsInChildren<Collider>();
    }

    // Called by the picker when this item is collected.
    public virtual void OnPickedUp(GameObject picker)
    {
        CancelReturn();

        // custom logic (play sound, add to inventory) can go here or in a subclass
        if (destroyOnPickup)
            Destroy(gameObject);
        else
            gameObject.SetActive(false);
    }

    // Start a timer to return the object to its initial transform after 'delay' seconds.
    // moveDuration controls how long the lerp back takes (0 = snap).
    public void ReturnToInitialAfterDelay(float delay, float moveDuration = 0.5f)
    {
        CancelReturn();
        returnCoroutine = StartCoroutine(ReturnCoroutine(delay, moveDuration));
    }

    // Cancel any pending return (call when the object is picked up again).
    public void CancelReturn()
    {
        if (returnCoroutine != null)
        {
            StopCoroutine(returnCoroutine);
            returnCoroutine = null;
        }
    }

    IEnumerator ReturnCoroutine(float delay, float moveDuration)
    {
        yield return new WaitForSeconds(delay);

        // remember physics state
        bool hadRb = rb != null;
        bool origUseGravity = hadRb ? rb.useGravity : false;
        bool origKinematic = hadRb ? rb.isKinematic : false;

        // prepare for scripted move
        if (hadRb)
        {
            rb.useGravity = false;
            rb.isKinematic = true;
        }

        // optionally disable colliders while moving to avoid collisions (optional)
        if (colliders != null)
        {
            foreach (var c in colliders) if (c != null) c.enabled = false;
        }

        // detach from current parent to move in world space if needed
        transform.SetParent(null, true);

        if (moveDuration <= 0f)
        {
            transform.position = initialPosition;
            transform.rotation = initialRotation;
        }
        else
        {
            float t = 0f;
            Vector3 startPos = transform.position;
            Quaternion startRot = transform.rotation;
            while (t < moveDuration)
            {
                t += Time.deltaTime;
                float f = Mathf.Clamp01(t / moveDuration);
                transform.position = Vector3.Lerp(startPos, initialPosition, f);
                transform.rotation = Quaternion.Slerp(startRot, initialRotation, f);
                yield return null;
            }
        }

        // restore parent
        transform.SetParent(initialParent, true);

        // restore physics state
        if (hadRb)
        {
            rb.isKinematic = origKinematic;
            rb.useGravity = origUseGravity;
        }

        if (colliders != null)
        {
            foreach (var c in colliders) if (c != null) c.enabled = true;
        }

        returnCoroutine = null;
    }
}
