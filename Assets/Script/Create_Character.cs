using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Create_Character : MonoBehaviour {

    public GameObject _character;
    public Camera MainCamera;
    public Turn turn;

    Vector3 _position;

    GameObject field;
    GameObject next_turn;

    Ray ray;
    RaycastHit Hit;

    public int mouse;
    int pturn;

    // Use this for initialization
    void Start () {
        field = GameObject.FindWithTag("Field");
        next_turn = GameObject.FindWithTag("Next_turn");

        _position = new Vector3(0.0f, 0.0f, 0.0f);
        mouse = 0;
        //turn = GameObject.FindWithTag("Next_turn").GetComponent<Turn>();
    }
	
	// Update is called once per frame
	void Update () {
        if (Input.GetMouseButtonUp(0))
        {
            mouse++;
        }
    }

    IEnumerator Click()
    {
        while(true)
        {
            Click_Position();
            yield return new WaitUntil(() => mouse >= 1);
        }
    }

    public void SpawnPoint()
    {
        Debug.Log("ok");
        StartCoroutine("Click");
    }

    void Click_Position()
    {
        ray = MainCamera.ScreenPointToRay(Input.mousePosition);
        Physics.Raycast(ray, out Hit, Mathf.Infinity);

        if (Hit.collider.tag == "Field")
        {
            _position = Hit.transform.position + new Vector3(0.0f, 0.0f, 0.0f);
            if (Input.GetMouseButtonUp(0))
            {
                createCharacter();
                StopCoroutine("Click");
            }
        }
    }

    void createCharacter()
    {
        pturn = Turn.iTurn;
        if(pturn == 0)
        {
            GameObject _object = Instantiate(_character, Vector3.zero, Quaternion.Euler(0,90,0)) as GameObject;

            _object.transform.parent = GameObject.Find("water_team").transform;
            _object.transform.localPosition = _position;
            _object.transform.localScale = new Vector3(0.005f, 0.005f, 0.005f);
        }
        else if(pturn == 1)
        {
            GameObject _object = Instantiate(_character, Vector3.zero, Quaternion.Euler(0, -90, 0)) as GameObject;

            _object.transform.parent = GameObject.Find("fire_team").transform;
            _object.transform.localPosition = _position;
            _object.transform.localScale = new Vector3(0.005f, 0.005f, 0.005f);
        }
    }
}
