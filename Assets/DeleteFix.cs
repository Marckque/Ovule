using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DeleteFix : MonoBehaviour
{

	void Start ()
    {
        AudioSource otherAudioSource = FindObjectOfType<AudioSource>();

        if (otherAudioSource)
        {
            Destroy(this);
        }
    }
}