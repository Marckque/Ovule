using UnityEngine;
using System.Collections;
using UnityEngine.SceneManagement;

public class DefeatManager : MonoBehaviour
{
    /*
    [SerializeField]
    private Transform m_BoidsContainer;
    [SerializeField]
    private Animator m_SceneTransitionAnimator;

    private const float DEFEAT_CHECK_TIMER = 0.25f;
    private bool m_Defeat;

    protected void Start()
    {
        StartCoroutine(CheckGameStatus());
    }

    private IEnumerator CheckGameStatus()
    {
        while (!m_Defeat)
        {
            if (m_BoidsContainer.childCount <= 0)
            {
                Defeat();
                yield break;
            }

            yield return new WaitForEndOfFrame();
            //yield return new WaitForSeconds(DEFEAT_CHECK_TIMER);
        }
    }

    private void Defeat()
    {
        print("Defeat");

        m_SceneTransition.GetAnimator.SetTrigger("FadeOut");

        StartCoroutine(ReloadScene());
    }

    private IEnumerator ReloadScene()
    {
        yield return new WaitForSeconds(2f);
        SceneManager.LoadScene("Game");
    }
    */
}