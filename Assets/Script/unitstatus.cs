using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class unitstatus : MonoBehaviour {
    Animator ani;
    public bool Dead;
    RaycastHit Hit;
    public float hp;

    void OnTriggerEnter(Collider collision)
    {

        if (collision.CompareTag("bullet"))
        {
            Dead = true;
            Destroy(gameObject,5.0f);
        }
    }
    public void dieFuntion()
    {
        if (Dead == true)
            ani.SetTrigger("isdead");


    }
    // Use this for initialization
    void Start () {
       // Dead = false;
        
        ani = gameObject.GetComponentInChildren<Animator>();
    }
	
	// Update is called once per frame
	void Update () {
        dieFuntion();
    }

}
