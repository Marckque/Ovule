using UnityEngine;
using System.Collections;

public class Hazard : MonoBehaviour
{
    [SerializeField]
    private float m_MaxVelocity = 1f;

    private Rigidbody m_Rigidbody;

    public Vector3 Direction { get; set; }

    protected void Awake()
    {
        m_Rigidbody = GetComponent<Rigidbody>();
        m_MaxVelocity += Random.Range(-0.9f, 0.9f);

        StartCoroutine(DestroyInstance());
    }

    protected void FixedUpdate()
    {
        m_Rigidbody.AddForce(Direction * 50f * Time.fixedDeltaTime);
        m_Rigidbody.velocity = Vector3.ClampMagnitude(m_Rigidbody.velocity, m_MaxVelocity);
    }

    private IEnumerator DestroyInstance()
    {
        yield return new WaitForSeconds(180f);
        Destroy(gameObject);
    }
}