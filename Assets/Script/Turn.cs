using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Turn : MonoBehaviour
{    
    public int iTurn;

    // Use this for initialization
    void Start ()
    {
        iTurn = 0;
	}
	
	// Update is called once per frame
	void Update ()
    {

    }

    public void TurnButton()
    {
        if (iTurn == 0) iTurn = 1;
        else if (iTurn == 1) iTurn = 0;
        Debug.Log(iTurn);
    }
}
