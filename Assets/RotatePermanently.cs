using UnityEngine;

public class RotatePermanently : MonoBehaviour
{
    [Header("Rotation values"), SerializeField, Range(-0.5f, 0.5f)]
    private float m_RotationX;
    [SerializeField, Range(-0.5f, 0.5f)]
    private float m_RotationY;
    [SerializeField, Range(-0.5f, 0.5f)]
    private float m_RotationZ;

    private Vector3 m_RotationValue;

    protected void Update()
    {
        m_RotationValue = new Vector3(m_RotationX, m_RotationY, m_RotationZ);
        transform.Rotate(m_RotationValue);
	}
}