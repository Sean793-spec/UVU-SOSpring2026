using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;

public class Timer : MonoBehaviour
{
    [SerializeField] TextMeshProUGUI timerText;
    [SerializeField] float remainingTime;

    // Public read-only state and event for other scripts
    public bool IsTimeUp { get; private set; }
    public event Action OnTimerEnded;

    // Update is called once per frame
    void Update()
    {
        if (IsTimeUp)
            return; // already ended

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
                    timerText.text = "00:00";
                    timerText.color = Color.red;
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
}
