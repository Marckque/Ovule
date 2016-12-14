using UnityEngine;

public class GestationController : MonoBehaviour
{
    [Header("Sounds"), SerializeField]
    private AudioSource m_AudioSource;
    [SerializeField]
    private AudioClip[] m_Sounds;

    private AudioClip[] m_SelectedSounds;
    private AudioClip m_CurrentSound;

    private bool m_PlaySound;
         
    private void Start()
    {
        AssociateSounds();
    }

    private void AssociateSounds()
    {
        m_SelectedSounds = new AudioClip[m_Sounds.Length];

        for (int i = 0; i < m_Sounds.Length; i++)
        {
            m_SelectedSounds[i] = m_Sounds[i];
        }           
    }

    private void Update()
    {
        CheckControls();
        PlaySound();
    }

	private void CheckControls()
    {
        if (!m_AudioSource.isPlaying)
        {
            if (Input.GetButtonDown("A_1"))
            {
                m_CurrentSound = m_SelectedSounds[0];
                m_PlaySound = true;
            }
            else if (Input.GetButtonDown("B_1"))
            {
                m_CurrentSound = m_SelectedSounds[1];
                m_PlaySound = true;
            }
            else if (Input.GetButtonDown("X_1"))
            {
                m_CurrentSound = m_SelectedSounds[2];
                m_PlaySound = true;
            }
            else if (Input.GetButtonDown("Y_1"))
            {
                m_CurrentSound = m_SelectedSounds[3];
                m_PlaySound = true;
            }
        }   
    }

    private void PlaySound()
    {
        if (m_PlaySound)
        {
            m_AudioSource.clip = m_CurrentSound;

            if (!m_AudioSource.isPlaying)
            {
                m_AudioSource.Play();
            }

            m_PlaySound = false;
        }
    }
}