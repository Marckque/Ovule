using UnityEngine;

public class SetDefaultPosition : MonoBehaviour
{
    [SerializeField]
    private Transform m_Target;

	protected void Awake()
    {
        transform.position = m_Target.transform.position;
	}
}