using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class BoidsCreator : MonoBehaviour
{
    [Header("Boids"), SerializeField]
    private Boid m_Boid;

    [Header("Boids initialisation"), SerializeField]
    private int m_NumberOfBoids = 1;
    [SerializeField]
    private float m_SpawnDelay = 0.5f;
    [SerializeField]
    private Transform m_BoidsContainer;

    [Header("Targets"), SerializeField]
    //private Transform m_Target;
    private int m_NumberOfTargets;
    [SerializeField]
    private int m_DistanceOfTargets;
    private Vector3[] m_Targets;

    public List<Boid> Boids { get; set; }

    protected void Start()
    {
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

            m_Targets[i] = new Vector3(center.x + x, center.y + y, 0f);
            Debug.DrawLine(center, m_Targets[i], Color.cyan, 10f);
        }
    }

    private IEnumerator InitialiseBoids()
    {
        for (int i = 0; i < m_NumberOfBoids; i++)
        {
            Boid boid = (Boid) Instantiate(m_Boid, Vector3.zero, Quaternion.identity);
            boid.transform.SetParent(m_BoidsContainer);

            yield return new WaitForSeconds(m_SpawnDelay);
        }
    }
}