using System;
using UnityEngine;
using System.Collections;

public class GameManager : MonoBehaviour
{
    [Header("Oocytes"), SerializeField]
    private Oocyte[] m_Oocytes;

    [Header("Dates"), SerializeField]
    private int[] m_OocyteDays;
    [SerializeField]
    private int[] m_MenstruatingDays;

    protected void Start()
    {
        CheckCurrentDate();
    }

    private void CheckCurrentDate()
    {
        int currentDay = DateTime.UtcNow.Day;

        foreach(int day in m_OocyteDays)
        {
            if (currentDay == day)
            {
                SetOvumToActive();
                return;
            }
        }

        foreach(int day in m_MenstruatingDays)
        {
            if (currentDay == day)
            {
                SetMenstruatingToActive();
                return;
            }
        }
    }

    private void SetOvumToActive()
    {
        int ovumNumber = UnityEngine.Random.Range(0, m_Oocytes.Length);
        m_Oocytes[ovumNumber].gameObject.SetActive(true);
    }

    private void SetMenstruatingToActive()
    {
        Camera.main.backgroundColor = Color.red;
    }
}