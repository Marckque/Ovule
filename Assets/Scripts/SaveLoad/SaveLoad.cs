// Thanks Eric Daily

using System.IO;
using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System.Runtime.Serialization.Formatters.Binary;

public static class SaveLoad
{
    public static Manager m_SavedGameManager;
    public static string path = "/savedGameManager.sgm";

    public static void Save()
    {
        m_SavedGameManager = Manager.Instance;

        Debug.Log("====== SAVE ======");
        Debug.Log("m_SavedGameManager: " + m_SavedGameManager);
        Debug.Log("m_SavedGameManager.m_BabyIsBorn: " + m_SavedGameManager.m_BabyIsBorn);
        Debug.Log("m_SavedGameManager.m_BabyIsOnItsWay: " + m_SavedGameManager.m_BabyIsOnItsWay);
        Debug.Log("m_SavedGameManager.m_GestationStartDate: " + m_SavedGameManager.m_GestationStartDate);

        BinaryFormatter binaryFormatter = new BinaryFormatter();
        FileStream fileStream = File.Create(Application.persistentDataPath + path);

        binaryFormatter.Serialize(fileStream, m_SavedGameManager);
        fileStream.Close();
    }

    public static bool Load()
    {
        if (File.Exists(Application.persistentDataPath + path))
        {
            BinaryFormatter binaryFormatter = new BinaryFormatter();
            FileStream fileStream = File.Open(Application.persistentDataPath + path, FileMode.Open);

            m_SavedGameManager = (Manager) binaryFormatter.Deserialize(fileStream);

            fileStream.Close();

            Debug.Log("====== LOAD ======");
            Debug.Log("m_SavedGameManager: " + m_SavedGameManager);
            Debug.Log("m_SavedGameManager.m_BabyIsBorn: " + m_SavedGameManager.m_BabyIsBorn);
            Debug.Log("m_SavedGameManager.m_BabyIsOnItsWay: " + m_SavedGameManager.m_BabyIsOnItsWay);
            Debug.Log("m_SavedGameManager.m_GestationStartDate: " + m_SavedGameManager.m_GestationStartDate);

            return true;
        }
        else
        {
            return false;
        }
    }
}