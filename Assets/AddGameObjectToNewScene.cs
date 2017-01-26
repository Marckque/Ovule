using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AddGameObjectToNewScene : MonoBehaviour
{
    protected void Awake()
    {
        

        DontDestroyOnLoad(transform.gameObject);
    }
}