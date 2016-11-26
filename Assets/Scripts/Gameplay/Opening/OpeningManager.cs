using UnityEngine;
using UnityEngine.SceneManagement;

public class OpeningManager : MonoBehaviour
{
	protected void Start()
    {
        LoadGame();
	}

    private void LoadGame()
    {
        if (SaveLoad.Load())
        {
            SceneManager.LoadScene("Gestation");
        }
        else
        {
            SceneManager.LoadScene("Game");
        }
    }
}