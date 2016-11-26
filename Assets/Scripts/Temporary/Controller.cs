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
    private Vector3 m_CurrentInput;
    private Vector3 m_LastInput;
    #endregion Variables

    #region CheckControls
    protected void Update()
    {
        CheckControls();
	}

    private void CheckControls()
    {
        Movement();
    }
    #endregion CheckControls

    #region ControllerControls
    private void Movement()
    {
        m_CurrentInput = new Vector3(Input.GetAxis("Horizontal"), 0f, Input.GetAxis("Vertical"));

        if (m_CurrentInput != Vector3.zero)
        {
            m_DecelerationTime = 0;
            m_AccelerationTime += Time.deltaTime;
            m_LastInput = m_CurrentInput;
        }
        else
        {
            m_AccelerationTime = 0;
            m_DecelerationTime += Time.deltaTime;
        }

        m_VelocityCurve = m_CurrentInput != Vector3.zero ? m_AccelerationCurve : m_DecelerationCurve;
        m_VelocityTime = m_AccelerationTime > 0 ? m_AccelerationTime : m_DecelerationTime;

        m_Velocity = m_MaxVelocity * m_VelocityCurve.Evaluate(m_VelocityTime);

        transform.Translate(m_LastInput.normalized * m_Velocity * Time.deltaTime);
    }

    #endregion ControllerControls
    /*
    #region TargetControls
    private void Aim()
    {
        float inputX = Input.GetAxis("R_XAxis_1");
        float inputZ = -Input.GetAxis("R_YAxis_1");
        Vector3 newPosition = new Vector3(inputX, 0, inputZ);

        MoveTarget(newPosition);
        //Attack(newPosition);
    }

    private void MoveTarget(Vector3 a_NewPosition)
    {
        if (a_NewPosition != Vector3.zero)
        {
            a_NewPosition *= m_DistanceModifier;
            m_Target.transform.localPosition = Vector3.LerpUnclamped(m_Target.transform.localPosition, a_NewPosition, m_TargetLerpSpeed * Time.deltaTime);
        }
        else
        {
            if (m_Target.transform.position != Vector3.zero)
            {
                m_Target.transform.localPosition = Vector3.LerpUnclamped(m_Target.transform.localPosition, Vector3.zero, m_TargetLerpSpeed * Time.deltaTime);
            }
        }
    }

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
    #endregion TargetControls
    */
}