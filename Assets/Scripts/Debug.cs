﻿using System;
using UnityEngine;
using System.Collections;

public class Debug : MonoBehaviour
{
	protected void Start()
    {
        Manager.Instance.m_BabyIsOnItsWay = true;
        SaveLoad.Save();
	}
}