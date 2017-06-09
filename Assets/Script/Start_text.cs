using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Start_text : MonoBehaviour {

    Text GameStart;

    float a;

	// Use this for initialization
    void Awake()
    {
        GameStart = GetComponent<Text>();
    }

	void Start () {
        
	}
    
	// Update is called once per frame
	void Update () {
        GameStart.color = new Vector4(1, 1, 1, a);
        if(a <= 1) a += 0.01f;
	}
}
