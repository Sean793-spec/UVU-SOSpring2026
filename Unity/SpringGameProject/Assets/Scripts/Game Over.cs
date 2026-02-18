using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;
using UnityEngine.UI;

public class GameOver : MonoBehaviour
{
    [Tooltip("Optional: assign the Timer component to listen to its OnTimerEnded event. If left empty the script will try to find a Timer at runtime.")]
    public Timer timer;

    [Tooltip("UI element to show when game is over (TextMeshProUGUI).")]
    public TextMeshProUGUI gameOverTextTMP;

    [Tooltip("Fallback UI Text (legacy) if TMP is not used.")]
    public Text gameOverText;

    [Tooltip("Whether to poll the timer's IsTimeUp property in Update if the event is not available.")]
    public bool pollTimer = true;

    private bool _isShown = false;

    void Start()
    {
        // find a Timer in the scene if none assigned
        if (timer == null)
            timer = FindObjectOfType<Timer>();

        if (timer != null)
        {
            // subscribe to event
            timer.OnTimerEnded += OnTimerEndedHandler;
        }

        // hide UI initially
        SetGameOverVisible(false);
    }

    void Update()
    {
        if (_isShown) return;

        // fallback polling if requested and timer exists but event wasn't fired (compatibility)
        if (pollTimer && timer != null && timer.IsTimeUp)
        {
            ShowGameOver();
        }
    }

    private void OnTimerEndedHandler()
    {
        ShowGameOver();
    }

    private void ShowGameOver()
    {
        _isShown = true;
        SetGameOverVisible(true);
    }

    private void SetGameOverVisible(bool visible)
    {
        if (gameOverTextTMP != null)
        {
            gameOverTextTMP.gameObject.SetActive(visible);
            if (visible)
                gameOverTextTMP.text = "Game Over";
        }

        if (gameOverText != null)
        {
            gameOverText.gameObject.SetActive(visible);
            if (visible)
                gameOverText.text = "Game Over";
        }
    }

    void OnDestroy()
    {
        if (timer != null)
            timer.OnTimerEnded -= OnTimerEndedHandler;
    }
}
