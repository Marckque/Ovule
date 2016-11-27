using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class BoidsCreator : MonoBehaviour
{
    [Header("Standard boid")]
    [SerializeField, Range(0.1f, 2f)]
    private float m_AccelerationFactor = 0.1f;
    [SerializeField, Range(0.1f, 2f)]
    private float m_DecelerationFactor = 0.1f;
    [SerializeField, Range(0.1f, 2f)]
    private float m_MaxVelocity = 0.1f;
    [SerializeField, Range(0.1f, 5f)]
    private float m_MaxSteeringForce = 0.1f;
    [SerializeField, Range(0f, 10f)]
    private float m_MinimumDistanceToTarget = 0.1f;
    [SerializeField, Range(0.1f, 10f)]
    private float m_AvoidanceFactor = 0.1f;
    [SerializeField, Range(0.1f, 10f)]
    private float m_ArriveFactor = 0.1f;
    [SerializeField, Range(0.1f, 10f)]
    private float m_MinimumDistanceToOtherBoid = 0.1f;

    [Header("Boids"), SerializeField]
    private Boid m_Boid;

    [Header("Boids initialisation"), SerializeField]
    private bool m_SpawnMethod;
    [SerializeField]
    private int m_NumberOfBoids = 1;
    [SerializeField]
    private float m_SpawnDelay = 0.5f;
    [SerializeField]
    private Transform m_BoidsContainer;
    [SerializeField]
    private float m_SpawnDuration;

    [Header("Targets"), SerializeField]
    private int m_NumberOfTargets;
    [SerializeField]
    private float m_DistanceOfTargets;
    private Vector3[] m_Targets;
    private List<Vector3> m_UnusedTargets = new List<Vector3>();

    bool osef;

    public Transform target;

    public List<Boid> Boids { get; set; }

    protected void Start()
    {
        m_SpawnDelay = m_SpawnDuration / m_NumberOfBoids;
        Boids = new List<Boid>();
        InitialiseTargets();
        StartCoroutine(InitialiseBoids());
    }

    private void InitialiseTargets()
    {
        m_Targets = new Vector3[m_NumberOfTargets];
        Vector3 center = Vector3.zero;

        for (int i = 0; i < m_NumberOfTargets; i++)
        {
            float x = m_DistanceOfTargets * Mathf.Cos(i);
            float y = m_DistanceOfTargets * Mathf.Sin(i);

            m_DistanceOfTargets += Random.Range(-2f, 2f);

            m_Targets[i] = new Vector3(center.x + x, center.y + y, 0f);
            Debug.DrawLine(center, m_Targets[i], Color.cyan, 10f);
        }

        foreach(Vector3 v in m_Targets)
        {
            m_UnusedTargets.Add(v);
        }
    }

    private IEnumerator InitialiseBoids()
    {
        if (m_SpawnMethod)
        {
            for (int i = 0; i < m_NumberOfBoids; i++)
            {
                Boid boid = (Boid)Instantiate(m_Boid, Vector3.zero, Quaternion.identity);
                boid.transform.SetParent(m_BoidsContainer);
                boid.SetTargetByPosition(m_UnusedTargets[0]);
                boid.SetMovementModifiers(m_AccelerationFactor, m_DecelerationFactor, m_MaxVelocity, m_MaxSteeringForce);
                boid.SetBehaviorModifiers(m_MinimumDistanceToTarget, m_AvoidanceFactor, m_MinimumDistanceToOtherBoid, m_ArriveFactor);
                boid.SetCurrentBehaviour(1);
                boid.DetermineIfCompatible();
                m_UnusedTargets.RemoveAt(0);
                Boids.Add(boid);
                yield return new WaitForSeconds(m_SpawnDelay);
            }
        }
        else
        {
            int bursts = m_NumberOfBoids / 10;

            for (int i = 0; i < bursts; i++)
            {
                for (int j = 0; j < bursts; j++)
                {
                    Boid boid = (Boid)Instantiate(m_Boid, Vector3.zero, Quaternion.identity);
                    boid.transform.SetParent(m_BoidsContainer);
                    boid.SetTargetByPosition(m_UnusedTargets[0]);
                    boid.SetMovementModifiers(m_AccelerationFactor, m_DecelerationFactor, m_MaxVelocity, m_MaxSteeringForce);
                    boid.SetBehaviorModifiers(m_MinimumDistanceToTarget, m_AvoidanceFactor, m_MinimumDistanceToOtherBoid, m_ArriveFactor);
                    boid.SetCurrentBehaviour(1);
                    boid.DetermineIfCompatible();
                    m_UnusedTargets.RemoveAt(0);
                    Boids.Add(boid);
                }

                yield return new WaitForSeconds(m_SpawnDuration);
            }
             
        }
            
        foreach(Boid boid in Boids)
        {
            boid.SetTargetByPosition(target.position);
        }

        osef = true;
    }

    private void Update()
    {
        foreach (Boid boid in Boids)
        {
            if (osef) boid.SetTargetByPosition(target.position);
            boid.UpdateBehaviour(Boids);
        }
    }
}