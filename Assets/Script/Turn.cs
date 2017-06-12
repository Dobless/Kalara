using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Turn : MonoBehaviour
{    
    public static int iTurn;

    // Use this for initialization
    void Start ()
    {
        if( iTurn == 0) iTurn = 0;
	}
	
	// Update is called once per frame
	void Update ()
    {

    }

    public void TurnButton()
    {
        if (iTurn == 0)
        {
            iTurn = 1;
            Move.water_mana = 5;
        } 
        else if (iTurn == 1)
        {
            iTurn = 0;
            Turn_score.score += 1;
            Move.fire_mana = 5;
        }
    }

    public void TurnCheck()
    {
        Debug.Log(iTurn);
        iTurn = iTurn;
    }
}
