using System;
using UnityEngine;
using TMPro;
using UnityEngine.SceneManagement;

public class Timer : MonoBehaviour
{
    [SerializeField] TextMeshProUGUI timerText;
    [SerializeField] float remainingTime;

    // When time is up, optionally disable these Behaviours (assign your player movement script(s) here)
    [Header("Freeze Options")]
    [Tooltip("Specific MonoBehaviours to disable when time runs out (e.g., PlayerMovement).")]
    [SerializeField] private MonoBehaviour[] behavioursToDisableOnTimeUp;

    [Tooltip("If true and no behaviours are assigned, try to find a GameObject tagged 'Player' and disable its behaviours.")]
    [SerializeField] private bool autoFindPlayerIfNoneAssigned = true;

    [Tooltip("Rigidbodies to make kinematic when time runs out (freeze). If empty and auto-find is enabled, the player's Rigidbody will be used if found.")]
    [SerializeField] private Rigidbody[] rigidbodiesToFreeze;

    // Public read-only state and event for other scripts
    public bool IsTimeUp { get; private set; }
    public event Action OnTimerEnded;

    // track whether we've already applied freeze logic so we don't run it multiple times
    private bool _hasAppliedFreeze;

    // Update is called once per frame
    void Update()
    {
        if (IsTimeUp)
        {
            // while time up, listen for Enter to reset scene
            if (Input.GetKeyDown(KeyCode.Return) || Input.GetKeyDown(KeyCode.KeypadEnter))
            {
                ReloadScene();
            }
            return; // already ended
        }

        if (remainingTime > 0f)
        {
            remainingTime -= Time.deltaTime;
            if (remainingTime <= 0f)
            {
                remainingTime = 0f;
                IsTimeUp = true;

                // update display
                if (timerText != null)
                {
                    timerText.text = "GAME OVER";
                    timerText.color = Color.red;
                }

                // apply freeze/disabling behaviors once
                if (!_hasAppliedFreeze)
                {
                    ApplyFreezeBehavior();
                    _hasAppliedFreeze = true;
                }

                // notify listeners once
                OnTimerEnded?.Invoke();

                return;
            }
        }

        // Update display each frame while time remains
        int minutes = Mathf.FloorToInt(remainingTime / 60f);
        int seconds = Mathf.FloorToInt(remainingTime % 60f);
        if (timerText != null)
            timerText.text = string.Format("{0:00}:{1:00}", minutes, seconds);
    }

    private void ApplyFreezeBehavior()
    {
        // Disable assigned behaviours
        if (behavioursToDisableOnTimeUp != null && behavioursToDisableOnTimeUp.Length > 0)
        {
            foreach (var b in behavioursToDisableOnTimeUp)
            {
                if (b != null)
                    b.enabled = false;
            }
        }
        else if (autoFindPlayerIfNoneAssigned)
        {
            // try to find GameObject tagged Player and disable its MonoBehaviours (except this Timer)
            var player = GameObject.FindGameObjectWithTag("Player");
            if (player != null)
            {
                var monos = player.GetComponents<MonoBehaviour>();
                foreach (var m in monos)
                {
                    if (m == null) continue;
                    // don't disable other critical scripts like this Timer if it's on the player (unlikely)
                    if (m is Timer) continue;
                    m.enabled = false;
                }
            }
        }

        // Freeze assigned rigidbodies (make kinematic). If none and auto-find, try player's Rigidbody
        if (rigidbodiesToFreeze != null && rigidbodiesToFreeze.Length > 0)
        {
            foreach (var rb in rigidbodiesToFreeze)
            {
                if (rb != null)
                    rb.isKinematic = true;
            }
        }
        else if (autoFindPlayerIfNoneAssigned)
        {
            var player = GameObject.FindGameObjectWithTag("Player");
            if (player != null)
            {
                var rb = player.GetComponent<Rigidbody>();
                if (rb != null)
                    rb.isKinematic = true;
            }
        }
    }

    private void ReloadScene()
    {
        // Optional: reset time scale if it was modified
        Time.timeScale = 1f;
        SceneManager.LoadScene(SceneManager.GetActiveScene().buildIndex);
    }

    // Optional helper to let external scripts reset the timer and scene programmatically
    public void ResetSceneAndTimer()
    {
        ReloadScene();
    }
}
