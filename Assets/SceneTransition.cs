using UnityEngine;
using UnityEngine.UI;

public class SceneTransition : MonoBehaviour
{
    [Header("Animator"), SerializeField]
    private Animator m_Animator;
    [SerializeField]
    private GameObject m_CanvasGameObject;

    [Header("Effect"), SerializeField]
    private GameObject[] m_GameObjectsToActivate;

    public Animator GetAnimator { get { return m_Animator; } }
    public GameObject GetCanvasGameObject { get { return m_CanvasGameObject; } }

    private bool m_DoOnce = false;

    protected void Awake()
    {
        DeactivateLinkedGameObjects();
    }

	protected void Start()
    {
        FadeToScene();
	}

    private void Update()
    {
        if (!m_DoOnce && !GetCanvasGameObject.activeInHierarchy)
        {
            print("aa");
            m_DoOnce = true;
            ActivateLinkedGameObjects();
            GetCanvasGameObject.SetActive(false);
        }
    }

    private void FadeToScene()
    {
        m_Animator.SetTrigger("FadeIn");
    }

    private void ActivateLinkedGameObjects()
    {
        foreach (GameObject g in m_GameObjectsToActivate)
        {
            g.SetActive(true);
        }
    }

    private void DeactivateLinkedGameObjects()
    {
        foreach (GameObject g in m_GameObjectsToActivate)
        {
            g.SetActive(false);
        }
    }
}