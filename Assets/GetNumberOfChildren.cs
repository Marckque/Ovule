using UnityEngine;

public class GetNumberOfChildren : MonoBehaviour
{
	protected void Update()
    {
	    if (Input.GetKeyDown(KeyCode.C))
        {
            Debug.Log(name + " has " + transform.childCount + " children.");
        }
	}
}