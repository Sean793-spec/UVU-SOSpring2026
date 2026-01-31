using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(Transform))]
public class PlayerPickup : MonoBehaviour
{
    public float pickRadius = 1.5f;
    public LayerMask pickupMask = ~0;
    public KeyCode pickupKey = KeyCode.E;

    [Tooltip("Transform to parent held objects to. If null, the player transform is used.")]
    public Transform holdParent;

    public Vector3 holdLocalPosition = new Vector3(0f, 0.8f, 0.5f);
    public Vector3 holdLocalEuler = Vector3.zero;
    public bool makeCollidersTriggerWhileHeld = true;
    public bool disableRigidbodyWhileHeld = true;

    private Pickupable heldItem;
    private Transform originalParent;
    private Rigidbody heldRb;
    private bool originalRbUseGravity;
    private bool originalRbKinematic;
    private Collider[] heldColliders;
    private bool[] originalColliderIsTrigger;

    void Update()
    {
        if (Input.GetKeyDown(pickupKey))
        {
            if (heldItem == null)
                TryPickupClosest();
            else
                DetachHeld();
        }
    }

    void TryPickupClosest()
    {
        Collider[] cols = Physics.OverlapSphere(transform.position, pickRadius, pickupMask);
        Pickupable closest = null;
        float best = float.MaxValue;

        foreach (var col in cols)
        {
            var p = col.GetComponentInParent<Pickupable>();
            if (p == null) continue;

            float d = Vector3.Distance(transform.position, p.transform.position);
            if (d < best)
            {
                best = d;
                closest = p;
            }
        }

        if (closest != null)
            Attach(closest);
    }

    void Attach(Pickupable item)
    {
        if (item == null) return;

        heldItem = item;
        heldItem.CancelReturn();
        // remember original parent
        originalParent = item.transform.parent;

        // set parent to hold point (or player)
        var parent = holdParent != null ? holdParent : transform;
        item.transform.SetParent(parent, true);

        // set local transform
        item.transform.localPosition = holdLocalPosition;
        item.transform.localEulerAngles = holdLocalEuler;

        // handle rigidbody
        heldRb = item.GetComponent<Rigidbody>();
        if (heldRb != null && disableRigidbodyWhileHeld)
        {
            originalRbUseGravity = heldRb.useGravity;
            originalRbKinematic = heldRb.isKinematic;
            heldRb.useGravity = false;
            heldRb.isKinematic = true;
        }

        // handle colliders
        if (makeCollidersTriggerWhileHeld)
        {
            heldColliders = item.GetComponentsInChildren<Collider>();
            if (heldColliders != null && heldColliders.Length > 0)
            {
                originalColliderIsTrigger = new bool[heldColliders.Length];
                for (int i = 0; i < heldColliders.Length; i++)
                {
                    originalColliderIsTrigger[i] = heldColliders[i].isTrigger;
                    heldColliders[i].isTrigger = true;
                }
            }
        }
    }

    void DetachHeld()
    {
        if (heldItem == null) return;

        // restore parent (detach to root)
        heldItem.transform.SetParent(originalParent, true);
        heldItem.ReturnToInitialAfterDelay(5f);
        // restore rigidbody
        if (heldRb != null && disableRigidbodyWhileHeld)
        {
            heldRb.useGravity = originalRbUseGravity;
            heldRb.isKinematic = originalRbKinematic;
            heldRb = null;
        }

        // restore colliders
        if (heldColliders != null && originalColliderIsTrigger != null)
        {
            for (int i = 0; i < heldColliders.Length; i++)
            {
                if (heldColliders[i] != null)
                    heldColliders[i].isTrigger = originalColliderIsTrigger[i];
            }
            heldColliders = null;
            originalColliderIsTrigger = null;
        }

        heldItem = null;
        originalParent = null;
    }

    void OnDrawGizmosSelected()
    {
        Gizmos.color = new Color(0f, 1f, 0f, 0.25f);
        Gizmos.DrawSphere(transform.position, pickRadius);
    }
}
