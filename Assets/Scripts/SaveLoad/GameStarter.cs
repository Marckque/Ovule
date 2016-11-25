using UnityEngine;
using UnityEngine.SceneManagement;

public class GameStarter : MonoBehaviour
{
	protected void Start()
    {
        LoadGame();
	}

    private void LoadGame()
    {
        if (SaveLoad.Load())
        {
            SceneManager.LoadScene("Baby");
        }
        else
        {
            SceneManager.LoadScene("Game");
        }
    }
}