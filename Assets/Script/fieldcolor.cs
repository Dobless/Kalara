using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class fieldcolor : MonoBehaviour {

    public Camera MainCamera;
    
    Ray ray;
    RaycastHit Hit;

    // Use this for initialization
    
    void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
        ray = MainCamera.ScreenPointToRay(Input.mousePosition);

        Physics.Raycast(ray, out Hit, Mathf.Infinity);

        if (Physics.Raycast(ray, out Hit))
        {
            if (Input.GetMouseButton(0))
            {
                if (Hit.collider.gameObject.transform.position == this.transform.position)
                {
                    Hit.collider.gameObject.GetComponent<Renderer>().material.color = Color.red;
                }
                else
                {
                    GetComponent<Renderer>().material.color = Color.white;
                }
            }
        }

        if (Input.GetMouseButtonUp(0))
        {
            GetComponent<Renderer>().material.color = Color.white;
        }
    }
}
