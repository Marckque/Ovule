// Thanks Eric Daily

using System.IO;
using UnityEngine;
using System.Runtime.Serialization.Formatters.Binary;

public static class SaveLoad
{
    public static Manager m_SavedGameManager;
    public static string path = "/savedGameManager.sgm";

    public static void Save(Manager a_Manager)
    {
        if (a_Manager != null)
        {
            m_SavedGameManager = a_Manager;
        }

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