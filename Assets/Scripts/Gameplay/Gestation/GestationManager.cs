using System;
using UnityEngine;
using UnityEngine.UI;

public class GestationManager : MonoBehaviour
{
    [Header("Camera"), SerializeField]
    private Camera m_Camera;

    [Header("Baby"), SerializeField]
    private GameObject m_Baby;
    [SerializeField]
    private Color m_BabyBackgroundColor;

    [Header("Foetus"), SerializeField]
    private GameObject m_Foetus;
    [SerializeField]
    private ParticleSystem m_FoetusParticles;

    [Header("Text"), SerializeField]
    private Text m_RemainingDaysText;
    [SerializeField]
    private string m_RemainingDaysString = " days left";

    private const int PERIOD_OF_GESTATION = 270;

    protected void Awake()
    {
        if (!SaveLoad.m_SavedGameManager.m_BabyIsBorn)
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
        DateTime gestationStartDate = Convert.ToDateTime(SaveLoad.m_SavedGameManager.m_GestationStartDate);
        DateTime newDate = DateTime.UtcNow.Date;

        TimeSpan dateDifference = newDate.Subtract(gestationStartDate);
        int differenceOfDays = (int)dateDifference.TotalDays;

        if (differenceOfDays >= PERIOD_OF_GESTATION)
        {
            SetupBaby();
        }
        else
        {
            UpdateRemainingDays(differenceOfDays);
        }
    }

    private void SetupBaby()
    {
        ChangeBackgroundColor();
        DeactivateFoetusParticles();

        SaveLoad.m_SavedGameManager.m_BabyIsBorn = true;
        SaveLoad.m_SavedGameManager.m_BabyIsOnItsWay = false;

        SaveLoad.Save();

        SetBabyToActive();
    }

    private void DeactivateFoetusParticles()
    {
        m_FoetusParticles.gameObject.SetActive(false);
    }

    private void ChangeBackgroundColor()
    {
        m_Camera.backgroundColor = m_BabyBackgroundColor;
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