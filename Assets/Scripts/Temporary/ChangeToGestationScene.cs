using UnityEngine;
using UnityEngine.SceneManagement;

public class ChangeToGestationScene : MonoBehaviour
{
    protected void Start()
    {
        SceneManager.LoadScene("Gestation");
    }
}