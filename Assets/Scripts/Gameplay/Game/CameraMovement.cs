﻿using UnityEngine;

public class CameraMovement : MonoBehaviour
{
    [SerializeField]
    private Transform m_Target;
    [SerializeField]
    private float m_HeightOffset = 20f;
    [SerializeField, Range(0.5f, 5f)]
    private float m_CameraLerpSpeed;

    private float m_NewCameraHeight;
    
    protected void Start()
    {
        m_NewCameraHeight = m_Target.position.y + m_HeightOffset;
    }

    protected void Update()
    {
        UpdatePosition();
    }

    private void UpdatePosition()
    {
        Vector3 newPosition = new Vector3(m_Target.transform.position.x, m_NewCameraHeight, m_Target.transform.position.z);
        transform.position = Vector3.LerpUnclamped(transform.position, newPosition, m_CameraLerpSpeed * Time.deltaTime);
    }
}