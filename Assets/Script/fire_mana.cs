using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class fire_mana : MonoBehaviour
{
    Text mana_gage;

    // Use this for initialization
    void Start()
    {
        mana_gage = GetComponent<Text>();
    }

    // Update is called once per frame
    void Update()
    {
        mana_gage.text = Move.fire_mana.ToString();
    }
}