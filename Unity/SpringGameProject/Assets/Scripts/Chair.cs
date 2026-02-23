using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Chair : MonoBehaviour
{
    [Tooltip("How many seconds the AI should stay locked at the chair when it enters.")]
    public float lockDuration = 30f;

    [Tooltip("Optional: require the incoming GameObject to have this tag to react. Leave empty to accept any.")]
    public string requiredTag = "";

    [Tooltip("If true, the chair will command the AI when something enters its trigger collider.")]
    public bool autoLockOnEnter = true;

    // You may want to ensure this GameObject has a Collider with `isTrigger = true`.

    private void Reset()
    {
        // Ensure there's a collider and it's a trigger so OnTriggerEnter fires
        Collider c = GetComponent<Collider>();
        if (c == null)
            gameObject.AddComponent<BoxCollider>();
        if (c != null)
            c.isTrigger = true;
    }

    private void OnTriggerEnter(Collider other)
    {
        if (!autoLockOnEnter) return;
        if (!string.IsNullOrEmpty(requiredTag) && !other.CompareTag(requiredTag)) return;

        // Try to find an AIMovement component on the entering object or its root
        AIMovement ai = other.GetComponent<AIMovement>();
        if (ai == null && other.attachedRigidbody != null)
        {
            ai = other.attachedRigidbody.GetComponentInParent<AIMovement>();
        }
        if (ai == null)
            ai = other.GetComponentInParent<AIMovement>();

        if (ai != null)
        {
            // Command the AI to move to this chair's world position and lock for lockDuration
            ai.MoveToAndLock(transform.position, lockDuration);
        }
    }

    // Optional: expose a public method to manually command an AI to sit here
    public void CommandAIToSit(AIMovement ai)
    {
        if (ai == null) return;
        ai.MoveToAndLock(transform.position, lockDuration);
    }
}
