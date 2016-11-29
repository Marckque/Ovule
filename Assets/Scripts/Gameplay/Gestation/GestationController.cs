using UnityEngine;

public class GestationController : MonoBehaviour
{
    [Header("Target"), SerializeField]
    private Transform m_Target;

    [Header("Camera parameters")]
    [SerializeField, Range(1f, 10f)]
    private float m_TranslationSpeed;
    [SerializeField, Range(1f, 10f)]
    private float m_Offset;

    private Vector3 m_CurrentLeftInput;

    /*
    private Vector3 m_CurrentRightInput;

    [SerializeField, Range(0f, 10f)]
    private float m_MinimumTargetValueZ;
    [SerializeField, Range(10f, 20f)]
    private float m_MaximumTargetValueZ;
    private float m_DefaultTargetValueZ;
    */

    protected void Awake()
    {
        //m_DefaultTargetValueZ = m_Target.transform.position.z;
    }

    protected void Update()
    {
        MoveCamera();
    }

    private void MoveCamera()
    {
        m_CurrentLeftInput = new Vector3(Input.GetAxis("Horizontal"), Input.GetAxis("Vertical"), 0f).normalized;
        //m_CurrentRightInput = new Vector3(0f, 0f, Input.GetAxis("R_YAxis_1")).normalized;

        UpdateCameraPosition();
        UpdateCameraAngle();
    }

    private void UpdateCameraPosition()
    {
        if (m_CurrentLeftInput != Vector3.zero)
        {
            transform.position = Vector3.Lerp(transform.position, Vector3.zero + m_CurrentLeftInput * m_Offset, m_TranslationSpeed * Time.deltaTime);
        }
        else
        {
            transform.position = Vector3.Lerp(transform.position, Vector3.zero, m_TranslationSpeed * Time.deltaTime);
        }

        /*
        if (m_CurrentRightInput.z > 0f)
        {
            m_Target.transform.position = Vector3.Lerp(m_Target.transform.position, new Vector3(0f, 0f, m_MinimumTargetValueZ), m_TranslationSpeed * Time.deltaTime);
        }
        else if (m_CurrentRightInput.z < 0f)
        {
            m_Target.transform.position = Vector3.Lerp(m_Target.transform.position, new Vector3(0f, 0f, m_MaximumTargetValueZ), m_TranslationSpeed * Time.deltaTime);
        }
        else
        {
            m_Target.transform.position = Vector3.Lerp(m_Target.transform.position, new Vector3(0f, 0f, m_DefaultTargetValueZ), m_TranslationSpeed * Time.deltaTime);
        }
        */
    }

    private void UpdateCameraAngle()
    {
        transform.LookAt(m_Target.position);
    }
}