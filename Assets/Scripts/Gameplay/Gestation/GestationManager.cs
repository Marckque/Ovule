using System;
using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class GestationManager : MonoBehaviour
{
    [Header("Baby & Foetus"), SerializeField]
    private GameObject m_Baby;
    [SerializeField]
    private GameObject m_Foetus;

    [Header("Text"), SerializeField]
    private Text m_RemainingDaysText;
    private string m_RemainingDaysString = " days left";

    private const int PERIOD_OF_GESTATION = 270;

	protected void Start()
    {
        if (!Manager.Instance.m_BabyIsBorn)
        {
            CheckIfBabyIsBorn();
        }
        else
        {
            SetBabyToActive();
        }            
	}

    private void CheckIfBabyIsBorn()
    {
        DateTime gestationStartDate = Convert.ToDateTime(Manager.Instance.m_GestationStartDate);
        DateTime newDate = DateTime.UtcNow.Date;

        TimeSpan dateDifference = newDate.Subtract(gestationStartDate);
        int differenceOfDays = (int)dateDifference.TotalDays;

        if (differenceOfDays >= PERIOD_OF_GESTATION)
        {
            CreateBaby();
        }
        else
        {
            UpdateRemainingDays(differenceOfDays);
        }
    }

    private void CreateBaby()
    {
        Manager.Instance.m_BabyIsBorn = true;
        SetBabyToActive();
    }

    private void SetBabyToActive()
    {
        m_Baby.SetActive(true);
    }

    private void SetFoetusToActive()
    {
        m_Foetus.SetActive(true);
    }

    private void UpdateRemainingDays(int a_DifferenceOfDays)
    {
        SetFoetusToActive();

        int remainingDays = PERIOD_OF_GESTATION - a_DifferenceOfDays;
        m_RemainingDaysText.text = remainingDays + m_RemainingDaysString;

        m_RemainingDaysText.gameObject.SetActive(true);
    }
}