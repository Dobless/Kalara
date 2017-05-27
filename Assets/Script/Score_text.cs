using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Score_text : MonoBehaviour {

    Text score_text;

    void Awake()
    {
        score_text = GetComponent<Text>();
    }

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
        score_text.text = Turn_score.score.ToString();
	}
}
