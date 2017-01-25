using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class Parallax : MonoBehaviour
{
    [SerializeField]
    private Controller m_Controller;
    
    private float m_DistanceMultiplier;
    public float m_Fix; 

    private void Start()
    {
        m_DistanceMultiplier = m_Controller.transform.position.y - transform.position.y;
        m_DistanceMultiplier *= m_Fix;
    }

    private void Update()
    {
        UpdatePosition();
    }

    private void UpdatePosition()
    {
        transform.Translate((m_Controller.GetVelocity() * m_DistanceMultiplier) * m_DistanceMultiplier * Time.deltaTime);
    }
}