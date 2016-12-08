using System;
using UnityEngine;
using System.Collections;

[System.Serializable]
public class Manager
{
    public static Manager Instance;
    public bool m_BabyIsOnItsWay;
    public bool m_BabyIsBorn;
    public string m_GestationStartDate;

    public Manager()
    {
        Instance = this;
    }
}