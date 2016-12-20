using UnityEngine;

public class CameraMovement : MonoBehaviour
{
    [SerializeField]
    private Transform m_Target;
    [SerializeField]
    private Vector3 m_OffsetPosition;
    [SerializeField, Range(-90f, 90f)]
    private float m_OffsetRotation;
    [SerializeField, Range(0.5f, 5f)]
    private float m_CameraLerpSpeed;

    private Vector3 m_TargetCameraPosition;

    protected void Update()
    {
        UpdateCameraPosition();
        transform.position = Vector3.Lerp(transform.position, m_TargetCameraPosition, m_CameraLerpSpeed * Time.deltaTime);
    }

    private void UpdateCameraPosition()
    {
        m_TargetCameraPosition = m_Target.position + m_OffsetPosition;
    }

    protected void OnValidate()
    {
        transform.position = new Vector3(m_Target.position.x + m_OffsetPosition.x, m_Target.position.y + m_OffsetPosition.y, m_Target.position.z + m_OffsetPosition.z);
        transform.eulerAngles = new Vector3(m_OffsetRotation, 0f, 0f);
    }
}