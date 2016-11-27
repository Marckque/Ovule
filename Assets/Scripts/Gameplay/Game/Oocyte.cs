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
            if (boid.IsCompatible)
            {
                StartGestation();
            }
            else
            {
                boid.Dies();
            }
        }
    }

    private void StartGestation()
    {
        Manager.Instance.m_BabyIsOnItsWay = true;
        SaveLoad.Save();

        m_FadeToBlack.SetActive(true);
    }
}