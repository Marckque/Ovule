using System;
using UnityEngine;

public class GameManager : MonoBehaviour
{
    [Header("Oocytes"), SerializeField]
    private Oocyte[] m_Oocytes;
    [SerializeField]
    private int[] m_OocyteDays;
    
    [Header("Menstruation"), SerializeField]
    private Camera m_Camera;
    [SerializeField]
    private Color m_MenstruationColor;
    [SerializeField]
    private int[] m_MenstruationDays;

    protected void Awake()
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

        foreach(int day in m_MenstruationDays)
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
        m_Camera.backgroundColor = Color.red;
    }
}