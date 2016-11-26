using UnityEngine;
using UnityEngine.SceneManagement;

public class Oocyte : MonoBehaviour
{
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

        SceneManager.LoadScene("Gestation");
    }
}