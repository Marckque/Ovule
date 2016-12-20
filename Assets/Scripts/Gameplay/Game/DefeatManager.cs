using UnityEngine;
using UnityEngine.SceneManagement;

public class DefeatManager : MonoBehaviour
{
    [SerializeField]
    private Transform m_BoidsContainer;

    protected void Update()
    {
        if (m_BoidsContainer.childCount <= 0)
        {
            SceneManager.LoadScene("Game");
        }
    }
}