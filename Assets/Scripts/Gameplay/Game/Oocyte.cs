using System;
using UnityEngine;

public class Oocyte : MonoBehaviour
{
    [SerializeField]
    private GameObject m_FadeToBlack;

    protected void OnTriggerEnter(Collider other)
    {
        Boid boid = other.GetComponent<Boid>();

        if (boid)
        {
            StartGestation();
        }
    }

    private void StartGestation()
    {
        Manager manager = new Manager();

        manager.m_BabyIsOnItsWay = true;
        manager.m_GestationStartDate = DateTime.UtcNow.Date.ToString();

        SaveLoad.Save(manager);

        m_FadeToBlack.SetActive(true);
    }
}