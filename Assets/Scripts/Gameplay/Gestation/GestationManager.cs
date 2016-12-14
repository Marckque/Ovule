using System;
using UnityEngine;
using UnityEngine.UI;

public class GestationManager : MonoBehaviour
{
    #region Variables
    [Header("Camera"), SerializeField]
    private Camera m_Camera;

    [Header("Baby"), SerializeField]
    private GameObject m_Baby;
    [SerializeField]
    private Color m_BabyBackgroundColor;

    [Header("Foetus"), SerializeField]
    private GameObject m_Foetus;
    [SerializeField]
    private MeshRenderer m_FoetusMeshRenderer;
    [SerializeField]
    private ParticleSystem m_FoetusParticles;

    [Header("Text"), SerializeField]
    private Text m_RemainingDaysText;
    [SerializeField]
    private string m_RemainingDaysString = " days left";
    #endregion Variables

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
        SaveLoad.m_SavedGameManager.m_BabyIsBorn = true;
        SaveLoad.m_SavedGameManager.m_BabyIsOnItsWay = false;

        // A bit dangerous... ?
        SaveLoad.Save(null);

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
        ChangeBackgroundColor();
        DeactivateFoetusParticles();
        m_Baby.SetActive(true);
    }

    private void UpdateRemainingDays(int a_DifferenceOfDays)
    {
        SetFoetusToActive(a_DifferenceOfDays);

        int remainingDays = PERIOD_OF_GESTATION - a_DifferenceOfDays;
        m_RemainingDaysText.text = remainingDays + m_RemainingDaysString;

        m_RemainingDaysText.gameObject.SetActive(true);
    }

    private void SetFoetusToActive(int a_DifferenceOfDays)
    {
        Material foetusMaterial = m_FoetusMeshRenderer.material;

        float newVertexOffsetHeight = a_DifferenceOfDays;
        newVertexOffsetHeight = ExtensionMethods.Remap(newVertexOffsetHeight, 0f, 270f, 0.5f, 2.5f);
        foetusMaterial.SetFloat("_VertexOffsetHeight", newVertexOffsetHeight);

        float newVertexOffsetSpeed = a_DifferenceOfDays;
        newVertexOffsetSpeed = ExtensionMethods.Remap(newVertexOffsetSpeed, 0f, 270f, 0.005f, 0.03f);
        foetusMaterial.SetFloat("_VertexOffsetSpeed", newVertexOffsetSpeed);

        m_Foetus.SetActive(true);
    }
}