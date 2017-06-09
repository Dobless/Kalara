using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Exit_text : MonoBehaviour
{
    Text Exit; 

    float a;
    
    // Use this for initialization
    void Awake()
    {
        Exit = GetComponent<Text>();
    }

    void Start()
    {

    }

    void Acolor()
    {
        Exit.color = new Vector4(1, 1, 1, a);
        if (a <= 1) a += 0.01f;
    }

    public void Exit_Game()
    {
        Debug.Log("Exit");
        //Application.Quit();
    }

    // Update is called once per frame
    void Update()
    {
        Acolor();
    }
}

