using UnityEngine;

[Tooltip("Controls basic movement of a 2D platformer character.")]
[RequireComponent(typeof(CharacterController))]
public class Character : MonoBehaviour
{
    [Tooltip("The speed at which the character moves horizontally and in depth.")]
    public float moveSpeed = 5f;

    [Tooltip("The upward force applied when the character jumps.")]
    public float jumpForce = 4f;

    [Tooltip("The constant downward force applied by gravity.")]
    public float gravity = -9.81f;

    [Tooltip("Allow movement along the Z axis using the 'Vertical' input axis.")]
    public bool allowZMovement = false;

    [Tooltip("Transform of the camera used for camera-relative movement. If null, Camera.main will be used.")]
    public Transform cameraTransform;

    [Tooltip("Rotation speed (degrees per second) when turning with left/right arrow keys.")]
    public float turnSpeed = 180f;

    private CharacterController controller;
    private Vector3 velocity;
    private Transform thisTransform;

    private void Start()
    {
        controller = GetComponent<CharacterController>();
        thisTransform = transform;

        if (cameraTransform == null && Camera.main != null)
            cameraTransform = Camera.main.transform;
    }

    private void Update()
    {
        MoveCharacter();
        ApplyGravity();
        KeepCharacterOnXAxis();
    }

    private void MoveCharacter()
    {
        // Turning: left/right arrow keys only
        float turn = 0f;
        if (Input.GetKey(KeyCode.LeftArrow)) turn = -1f;
        if (Input.GetKey(KeyCode.RightArrow)) turn = 1f;
        if (turn != 0f)
            thisTransform.Rotate(0f, turn * turnSpeed * Time.deltaTime, 0f);

        // Forward / backward: up/down arrow keys, move along character forward
        float forward = 0f;
        if (Input.GetKey(KeyCode.UpArrow)) forward = 1f;
        if (Input.GetKey(KeyCode.DownArrow)) forward = -1f;

        Vector3 move = Vector3.zero;
        if (Mathf.Abs(forward) > 0f)
        {
            // move along the character's forward direction (ignores camera)
            Vector3 dir = thisTransform.forward;
            dir.y = 0f;
            dir.Normalize();
            move = dir * (moveSpeed * forward * Time.deltaTime);
        }

        // Optionally allow Z axis via input (kept for compatibility but not used for arrow behavior)
        if (allowZMovement)
        {
            float inputZ = Input.GetAxisRaw("Vertical");
            // if arrow keys are used, prefer them; otherwise use axis
            if (!Input.GetKey(KeyCode.UpArrow) && !Input.GetKey(KeyCode.DownArrow))
            {
                Vector3 camForward = cameraTransform != null ? cameraTransform.forward : Vector3.forward;
                camForward.y = 0f;
                camForward.Normalize();
                Vector3 camRight = cameraTransform != null ? cameraTransform.right : Vector3.right;
                camRight.y = 0f;
                camRight.Normalize();
                Vector3 worldDir = camRight * Input.GetAxisRaw("Horizontal") + camForward * inputZ;
                move = worldDir.normalized * (moveSpeed * Time.deltaTime);
            }
        }

        controller.Move(move + velocity * Time.deltaTime);

        // Jump only when grounded
        if (Input.GetButtonDown("Jump") && controller.isGrounded)
        {
            velocity.y = Mathf.Sqrt(jumpForce * -2f * gravity);
        }
    }

    private void ApplyGravity()
    {
        if (!controller.isGrounded)
        {
            velocity.y += gravity * Time.deltaTime;
        }
        else
        {
            velocity.y = 0f;
        }
    }

    private void KeepCharacterOnXAxis()
    {
        if (allowZMovement) return;

        var currentPosition = thisTransform.position;
        currentPosition.z = 0f;
        thisTransform.position = currentPosition;
    }
}

