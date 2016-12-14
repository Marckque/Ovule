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
    [Header("Foetus' shader"), SerializeField, Range(0.5f, 4f)]
    private float m_MinimumVertexOffsetHeight = 0.5f;
    [SerializeField, Range(0.5f, 4f)]
    private float m_MaximumVertexOffsetHeight = 2.5f;
    [SerializeField, Range(0.001f, 0.05f)]
    private float m_MinimumVertexOffsetSpeed = 0.005f;
    [SerializeField, Range(0.001f, 0.05f)]
    private float m_MaximumVertexOffsetSpeed = 0.03f;

    [Header("Text"), SerializeField]
    private Text m_RemainingDaysText;
    [SerializeField]
    private string m_RemainingDaysString = " days left";
    #endregion Variables

    private const int PERIOD_OF_GESTATION = 270;
    private int m_DifferenceOfDays;

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
        SetDifferenceOfDays();

        if (m_DifferenceOfDays >= PERIOD_OF_GESTATION)
        {
            SetupBaby();
        }
        else
        {
            UpdateRemainingDays();
        }
    }

    private void SetDifferenceOfDays()
    {
        DateTime gestationStartDate = Convert.ToDateTime(SaveLoad.m_SavedGameManager.m_GestationStartDate);
        DateTime newDate = DateTime.UtcNow.Date;

        TimeSpan dateDifference = newDate.Subtract(gestationStartDate);
        m_DifferenceOfDays = (int)dateDifference.TotalDays;
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

    private void UpdateRemainingDays()
    {
        SetFoetusToActive();

        int remainingDays = PERIOD_OF_GESTATION - m_DifferenceOfDays;
        m_RemainingDaysText.text = remainingDays + m_RemainingDaysString;

        m_RemainingDaysText.gameObject.SetActive(true);
    }

    private void SetFoetusToActive()
    {
        UpdateFoetus();

        m_Foetus.SetActive(true);
    }

    private void UpdateFoetus()
    {
        Material foetusMaterial = m_FoetusMeshRenderer.material;

        // Vertex offset height
        float newVertexOffsetHeight = m_DifferenceOfDays;
        newVertexOffsetHeight = ExtensionMethods.Remap(newVertexOffsetHeight, 0f, 270f, m_MinimumVertexOffsetHeight, m_MaximumVertexOffsetHeight);
        foetusMaterial.SetFloat("_VertexOffsetHeight", newVertexOffsetHeight);

        // Vertex offset speed
        float newVertexOffsetSpeed = m_DifferenceOfDays;
        newVertexOffsetSpeed = ExtensionMethods.Remap(newVertexOffsetSpeed, 0f, 270f, m_MinimumVertexOffsetSpeed, m_MaximumVertexOffsetSpeed);
        foetusMaterial.SetFloat("_VertexOffsetSpeed", newVertexOffsetSpeed);
    }
}