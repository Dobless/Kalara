using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class win_color : MonoBehaviour {

    Image _color;
    public static float num;

	// Use this for initialization
	void Start () {
        _color = GetComponent<Image>();
        num = 0.0f;
	}
	
	// Update is called once per frame
	void Update () {
        _color.color = new Vector4(1, 1, 1, num);
	}
}
