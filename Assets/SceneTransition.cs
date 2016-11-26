using UnityEngine;
using UnityEngine.UI;

public class SceneTransition : MonoBehaviour
{
    [SerializeField]
    private Animator m_Animator;

	protected void Start()
    {
        FadeToScene();
	}

    private void FadeToScene()
    {
        m_Animator.SetTrigger("FadeIn");
    }
}