using UnityEngine;

public class Controller : MonoBehaviour
{
    #region Variables
    [Header("Movement"), SerializeField]
    private float m_MaxVelocity;
    [SerializeField]
    private AnimationCurve m_AccelerationCurve;
    [SerializeField]
    private AnimationCurve m_DecelerationCurve;

    private AnimationCurve m_VelocityCurve;
    private float m_AccelerationTime;
    private float m_DecelerationTime;
    private float m_VelocityTime;
    private float m_Velocity;
    private Vector3 m_CurrentLeftInput;
    private Vector3 m_LastLeftInput;

    [Header("Target"), SerializeField]
    private Transform m_Target;
    [SerializeField]
    private float m_DistanceModifier;
    [SerializeField]
    private float m_TargetLerpSpeed;

    private Vector3 m_CurrentRightInput;
    #endregion Variables

    #region CheckControls
    protected void Update()
    {
        CheckControls();
	}

    private void CheckControls()
    {
        ControllerMovement();
        TargetMovement();
    }
    #endregion CheckControls

    #region ControllerControls
    private void ControllerMovement()
    {
        m_CurrentLeftInput = new Vector3(Input.GetAxis("Horizontal"), 0f, Input.GetAxis("Vertical"));

        if (m_CurrentLeftInput != Vector3.zero)
        {
            m_DecelerationTime = 0;
            m_AccelerationTime += Time.deltaTime;
            m_LastLeftInput = m_CurrentLeftInput;
        }
        else
        {
            m_AccelerationTime = 0;
            m_DecelerationTime += Time.deltaTime;
        }

        m_VelocityCurve = m_CurrentLeftInput != Vector3.zero ? m_AccelerationCurve : m_DecelerationCurve;
        m_VelocityTime = m_AccelerationTime > 0 ? m_AccelerationTime : m_DecelerationTime;

        m_Velocity = m_MaxVelocity * m_VelocityCurve.Evaluate(m_VelocityTime);

        transform.Translate(m_LastLeftInput.normalized * m_Velocity * Time.deltaTime);
    }

    #endregion ControllerControls

    #region TargetControls
    private void TargetMovement()
    {
        m_CurrentRightInput = new Vector3(Input.GetAxis("R_XAxis_1"), 0f, -Input.GetAxis("R_YAxis_1"));
        Vector3 newPosition = m_CurrentRightInput.normalized * m_DistanceModifier;

        if (newPosition != Vector3.zero)
        {
            m_Target.localPosition = Vector3.LerpUnclamped(m_Target.transform.localPosition, newPosition, m_TargetLerpSpeed * Time.deltaTime);
        }
        else
        {
            m_Target.localPosition = Vector3.LerpUnclamped(m_Target.localPosition, Vector3.zero, m_TargetLerpSpeed * Time.deltaTime);
        }
    }
  
    /*
    private void Attack(Vector3 a_NewPosition)
    {
        if (m_CurrentCooldown > 0)
        {
            m_CurrentCooldown -= Time.deltaTime;
        }
        else 
        {
            if (Input.GetButtonDown("RB_1"))
            {
                m_CurrentCooldown = m_AttackCooldown;

                foreach (Boid boids in BoidsManager.Instance.Boids)
                {
                    boids.GetTrailRenderer.Clear();
                    boids.transform.position = (m_Target.transform.position + a_NewPosition * m_AttackRange);
                }
            }
        }
    }
    */
    #endregion TargetControls
}