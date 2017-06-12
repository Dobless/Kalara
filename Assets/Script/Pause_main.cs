using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class Pause_main : MonoBehaviour
{
    // Use this for initialization
    void Start()
    {

    }

    // Update is called once per frame
    void Update()
    {

    }

    public void _change()
    {
        Turn.iTurn = 0;
        SceneManager.LoadScene("Field_Scene");
    }
}
