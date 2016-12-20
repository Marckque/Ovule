using UnityEngine;

public class BoidKiller : MonoBehaviour
{
    protected void OnTriggerEnter(Collider a_Collider)
    {
        Boid boid = a_Collider.GetComponent<Boid>();

        if (boid != null)
        {
            BoidsManager.Instance.Boids.Remove(boid);
            Destroy(boid.gameObject);
        }
    }
}