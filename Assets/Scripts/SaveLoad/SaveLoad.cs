// Thanks Eric Daily

using System.IO;
using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System.Runtime.Serialization.Formatters.Binary;

public static class SaveLoad
{
    public static Manager m_SavedGameManager = new Manager();
    public static string path = "/savedGameManager.sgm";

    public static void Save()
    {
        m_SavedGameManager = Manager.Instance;

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

            return true;
        }
        else
        {
            return false;
        }
    }
}