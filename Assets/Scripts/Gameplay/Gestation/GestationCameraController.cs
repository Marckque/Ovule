using UnityEngine;

public class GestationCameraController : MonoBehaviour
{
    [Header("Target"), SerializeField]
    private Transform m_Target;

    [Header("Camera parameters")]
    [SerializeField, Range(0f, 10f)]
    private float m_TranslationSpeed;
    [SerializeField, Range(1f, 10f)]
    private float m_Offset;
    [SerializeField, Range(-10f, 10f)]
    private float m_OffsetZ;

    private Vector3 m_CurrentLeftInput;

    protected void Update()
    {
        MoveCamera();
    }

    private void MoveCamera()
    {
        m_CurrentLeftInput = new Vector3(Input.GetAxis("Horizontal"), Input.GetAxis("Vertical"), 0f).normalized;

        UpdateCameraPosition();
        UpdateCameraAngle();
    }

    private void UpdateCameraPosition()
    {
        if (m_CurrentLeftInput != Vector3.zero)
        {
            transform.position = Vector3.Lerp(transform.position, (m_CurrentLeftInput * m_Offset) + new Vector3(0f, 0f, m_OffsetZ) , m_TranslationSpeed * Time.deltaTime);
        }
        else
        {
            transform.position = Vector3.Lerp(transform.position, Vector3.zero, m_TranslationSpeed * Time.deltaTime);
        }
    }

    private void UpdateCameraAngle()
    {
        transform.LookAt(m_Target.position);
    }
}