using UnityEngine;
using System.Collections.Generic;

public class Boid : MonoBehaviour
{
    #region Variables    
    // Movement
    private float m_AccelerationFactor = 1f;
    private float m_DecelerationFactor = 1f;
    private float m_MaxSteeringForce = 1f;
    private float m_MaxVelocity = 1f;
    private float m_CurrentMaxSpeed = 1f;
    private float m_VelocityMultiplier = 1f;

    // Behavior modifiers
    private float m_ArriveFactor = 1f;
    private float m_AvoidanceFactor = 1f;
    private float m_MinimumDistanceToTarget = 1f;
    private float m_MinimumDistanceToOtherBoid = 1f;
    
    // Other
    public enum CurrentBehaviour {None, Arrive, Flow, Path};
    private CurrentBehaviour m_CurrentBehaviour;
    private Vector3 m_Target;
    private Vector3 m_Acceleration;
    private Vector3 m_CurrentVelocity;

    private Vector3 m_DesiredVelocity;

    private List<Boid> m_OtherBoids = new List<Boid>();
    #endregion Variables

    #region PublicGetters
    #endregion PublicGetters

    #region DefineVariables
    public void SetMovementModifiers(float a_AccelerationFactor, float a_DecelerationFactor, float a_MaxVelocity, float a_MaxSteeringForce, float a_VelocityMultiplier)
    {
        m_AccelerationFactor = a_AccelerationFactor;
        m_DecelerationFactor = a_DecelerationFactor;
        m_MaxVelocity = a_MaxVelocity;
        m_MaxSteeringForce = a_MaxSteeringForce;
        m_VelocityMultiplier = a_VelocityMultiplier;
    }

    public void SetBehaviorModifiers(float a_MinimumDistanceToTarget, float a_AvoidanceFactor, float a_MinimumDistanceToOtherBoid, float a_ArriveFactor)
    {
        m_MinimumDistanceToTarget = a_MinimumDistanceToTarget;
        m_AvoidanceFactor = a_AvoidanceFactor;
        m_MinimumDistanceToOtherBoid = a_MinimumDistanceToOtherBoid;
        m_ArriveFactor = a_ArriveFactor;
    }

    public void SetCurrentBehaviour(int a_CurrentBehaviour)
    {
        switch(a_CurrentBehaviour)
        {
            case 0:
                m_CurrentBehaviour = CurrentBehaviour.None;
                break;

            case 1:
                m_CurrentBehaviour = CurrentBehaviour.Arrive;
                break;

            case 2:
                m_CurrentBehaviour = CurrentBehaviour.Flow;
                break;

            case 3:
                m_CurrentBehaviour = CurrentBehaviour.Path;
                break;

            default:
                m_CurrentBehaviour = CurrentBehaviour.Arrive;
                break;
        }
    }

    public void SetTarget(Transform a_Target)
    {
        m_Target = a_Target.position;
    }

    public void SetTargetByPosition(Vector3 a_TargetPosition)
    {
        m_Target = a_TargetPosition;
    }
    #endregion DefineVariables

    protected void Update()
    {
        UpdateBehaviour();
        CalculateCurrentVelocity();
    }

    private void TranslatePosition(Vector3 a_NewVelocity)
    {
        transform.Translate(a_NewVelocity * m_VelocityMultiplier * Time.deltaTime);
    }

    public void GetOtherBoids(List<Boid> a_Boids)
    {
        m_OtherBoids = a_Boids;
    }

    #region VelocityCalculation
    private void CalculateCurrentVelocity()
    {
        m_CurrentVelocity += m_Acceleration;
        m_CurrentVelocity = Vector3.ClampMagnitude(m_CurrentVelocity, m_MaxVelocity);
        TranslatePosition(m_CurrentVelocity);
        m_Acceleration = Vector3.zero;
    }

    private void UpdateAcceleration(Vector3 a_Force)
    {
        m_Acceleration += a_Force * m_AccelerationFactor;
    }
    #endregion VelocityCalculation

    #region Behaviors
    public void UpdateBehaviour()
    {
        if (m_CurrentBehaviour == CurrentBehaviour.None)
        {
            if (m_CurrentVelocity != Vector3.zero)
            {
                m_CurrentVelocity = Vector3.Lerp(m_CurrentVelocity, Vector3.zero, m_DecelerationFactor * Time.deltaTime);
            }
        }   

        if (m_CurrentBehaviour == CurrentBehaviour.Arrive)
        {
            UpdateAcceleration(AvoidOtherBoids());
            UpdateAcceleration(Arrive());
        }   
    }

    private Vector3 Arrive()
    {
        Vector3 targetDirection = m_Target - transform.position;
        float distanceToTarget = targetDirection.sqrMagnitude;
        m_CurrentMaxSpeed = 0;
        
        if (distanceToTarget < m_MinimumDistanceToTarget)
        {
            m_CurrentMaxSpeed = ExtensionMethods.Remap(m_MaxVelocity, 0, m_MaxVelocity, m_MaxVelocity, 0);
        }
        else
        {
            m_CurrentMaxSpeed = m_MaxVelocity;
        }

        targetDirection *= m_CurrentMaxSpeed;

        targetDirection -= m_CurrentVelocity;
        targetDirection *= m_ArriveFactor;
        targetDirection = Vector3.ClampMagnitude(targetDirection, m_MaxSteeringForce);

        return targetDirection; // DT
    }

    private void Flow()
    {

    }

    private void Path()
    {

    }

    private Vector3 AvoidOtherBoids()
    {
        int numberOfCloseBoids = 0;
        m_DesiredVelocity = Vector3.zero;

        foreach (Boid otherBoid in m_OtherBoids)
        {
            Vector3 oppositeDirection = GetPosition() - otherBoid.GetPosition();
            float distanceToOtherBoids = oppositeDirection.sqrMagnitude;

            if (distanceToOtherBoids > 0 && distanceToOtherBoids < m_MinimumDistanceToOtherBoid)
            {
                numberOfCloseBoids++;

                oppositeDirection /= distanceToOtherBoids;
                m_DesiredVelocity += oppositeDirection;
            }
        }

        if (numberOfCloseBoids > 0)
        {
            m_DesiredVelocity /= numberOfCloseBoids;

            m_DesiredVelocity -= m_CurrentVelocity;
            m_DesiredVelocity *= m_AvoidanceFactor;
            m_DesiredVelocity = Vector3.ClampMagnitude(m_DesiredVelocity, m_MaxSteeringForce);
            return m_DesiredVelocity; // DT
        }

        return Vector3.zero;
    }
    #endregion Behaviors   

    public void Dies()
    {
        BoidsManager.Instance.Boids.Remove(this);
        Destroy(gameObject);
    }

    public Vector3 GetPosition()
    {
        return transform.position;
    }
}