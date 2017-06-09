using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CAnimator : MonoBehaviour {

    public Animator animator;

	// Use this for initialization
	void Start () {
        animator = gameObject.GetComponent<Animator>();
	}
	
	// Update is called once per frame
	void Update () {
        animator.SetBool("Standing", false);
	}
}
