using UnityEngine;

public class Controller : MonoBehaviour
{
    #region Variables
    [Header("Movement"), SerializeField]
    private float m_CloseVelocity;
    [SerializeField]
    private float m_NormalVelocity;
    [SerializeField]
    private float m_LargeVelocity;
    [SerializeField]
    private AnimationCurve m_AccelerationCurve;
    [SerializeField]
    private AnimationCurve m_DecelerationCurve;
    [SerializeField]
    private float m_MovementRadius;

    private AnimationCurve m_VelocityCurve;
    private float m_AccelerationTime;
    private float m_DecelerationTime;
    private float m_VelocityTime;
    private float m_DepthVelocity;
    private float m_MaxVelocity;
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
        UpdateMaxVelocity();

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

        DepthMovement();

        transform.Translate(m_LastLeftInput.normalized * m_Velocity * Time.deltaTime);
    }

    private void UpdateMaxVelocity()
    {
        if (Input.GetButton("LB_1"))
        {
            m_MaxVelocity = m_CloseVelocity;
            m_DepthVelocity = m_CloseVelocity;
        }
        else if (Input.GetAxisRaw("LT_1") > 0)
        {   
            m_MaxVelocity = m_LargeVelocity;
            m_DepthVelocity = m_LargeVelocity;
        }
        else
        {  
            m_MaxVelocity = m_NormalVelocity;
            m_DepthVelocity = m_NormalVelocity;
        }
    }

    private void DepthMovement()
    {
        Vector3 depthMovement = Vector3.zero;

        if (Input.GetButton("RB_1") && GetCurrentHeight() < m_MovementRadius)
        {
            depthMovement.y = 1;
        }
        else if (Input.GetAxisRaw("RT_1") > 0 && GetCurrentHeight() > -m_MovementRadius)
        {
            depthMovement.y = -1;
        }
        else
        {
            depthMovement.y = 0;
        }

        transform.Translate(depthMovement.normalized * m_DepthVelocity * Time.deltaTime);
    }
    
    private float GetCurrentHeight()
    {
        return transform.position.y;
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
    #endregion TargetControls
}