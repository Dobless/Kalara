using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class scene_change : MonoBehaviour {

    Text Main_Manu;

	// Use this for initialization
	void Start () {
        Main_Manu = GetComponent<Text>();
	}
	
	// Update is called once per frame
	void Update () {
        Main_Manu.color = new Vector4(1, 1, 1, win_color.num);
	}

    public void _change()
    {
        Turn.iTurn = 0;
        SceneManager.LoadScene("Field_Scene");
    }
}
