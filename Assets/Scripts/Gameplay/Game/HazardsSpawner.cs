using UnityEngine;
using System.Collections;

public class HazardsSpawner : MonoBehaviour
{
    [SerializeField]
    private Hazard m_HazardPrefab;
    [SerializeField]
    private float m_MinimumDelay;
    [SerializeField]
    private float m_MaximumDelay;

    private float m_Delay;

    protected void Start()
    {
        StartCoroutine(HazardSpawn());
	}

    private IEnumerator HazardSpawn()
    {
        while (true)
        {
            CreateHazards();
            yield return new WaitForSeconds(m_Delay);
            SetNewDelay();
        }
    }

    private void CreateHazards()
    {
        Hazard hazard = (Hazard) Instantiate(m_HazardPrefab, transform.position, Quaternion.identity);
        hazard.Direction = Vector3.zero - transform.position + RandomOffset();
    }

    private void SetNewDelay()
    {
        m_Delay = Random.Range(m_MinimumDelay, m_MaximumDelay);
    }

    private Vector3 RandomOffset()
    {
        float offsetValue = 20f;

        float x = Random.Range(-offsetValue, offsetValue);
        float y = Random.Range(-offsetValue, offsetValue);
        float z = Random.Range(-offsetValue, offsetValue);

        return new Vector3(x, y, z);
    }
}