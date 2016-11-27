using UnityEngine;

public class TriggerScripts : MonoBehaviour
{
    [Header("Animator"), SerializeField]
    protected Animator m_Animator;

    [Header("Sounds"), SerializeField]
    protected AudioSource[] m_Sounds;

    [SerializeField]
    protected GameObject[] m_AffectedGameObjects;

    public Animator GetAnimator { get { return m_Animator; } }

    protected void Awake()
    {
        Deactivate();
    }

    protected void Update()
    {
        if (m_Animator.GetCurrentAnimatorStateInfo(0).normalizedTime > 1 && !m_Animator.IsInTransition(0))
        {
            Activate();
            gameObject.SetActive(false);

            if (m_Sounds.Length > 0)
            {
                foreach (AudioSource sound in m_Sounds)
                {
                    sound.Play();
                }
            }
        }
    }

    protected void Activate()
    {
        foreach (GameObject g in m_AffectedGameObjects)
        {
            if (!g.activeInHierarchy)
            {
                g.SetActive(true);
            }
        }
    }

    protected void Deactivate()
    {
        foreach (GameObject g in m_AffectedGameObjects)
        {
            if (g.activeInHierarchy)
            {
                g.SetActive(false);
            }
        }
    }
}
