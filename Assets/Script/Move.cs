using UnityEngine;
using System.Collections;

public class Move : MonoBehaviour {

    public Camera MainCamera;
    float MoveSpeed;
    float maxDis;
    public Turn turn;
    public GameObject place;

    Vector3 Click;
    Ray ray;
    RaycastHit Hit;

    GameObject player;
    GameObject field;
    GameObject floor;
    GameObject stair;
    GameObject enemy;
    GameObject next_turn;

    bool choose = true;
    bool bMove = false;
    bool select = false;
    int pTurn;

    void Click_check()
    {
        if (Input.GetMouseButton(0))
        {
            pTurn = Turn.iTurn;
            ray = MainCamera.ScreenPointToRay(Input.mousePosition);
            Physics.Raycast(ray, out Hit, Mathf.Infinity);

            if (pTurn == 0)
            {
                if (Hit.collider == null)
                {
                    return;
                }
                if (Hit.collider.tag == "Player")
                {
                    if (Hit.collider.gameObject == this.gameObject)
                    {
                        //Hit.collider.gameObject.GetComponent<Renderer>().material.color = Color.blue;
                        select = true;
                        Debug.Log(123123);
                    }
                }
            }

            else if (pTurn == 1)
            {
                if (Hit.collider == null)
                {
                    return;
                }
                if (Hit.collider.tag == "Enemy")
                {
                    if (Hit.collider.gameObject == this.gameObject)
                    {
                        Hit.collider.gameObject.GetComponent<Renderer>().material.color = Color.blue;
                        select = true;
                    }
                }
            }
        }
    }

    void Field_select()
    {
        if (Hit.collider.tag == "Field")
        {
            float distance = Vector3.Distance(this.transform.position, Hit.transform.position);
            if (distance <= maxDis)
            {
                //GetComponent<Renderer>().material.color = Color.white;
                bMove = true;
                select = false;
                choose = false;
                Click = Hit.transform.gameObject.transform.position + new Vector3(0.0f, 0.44f, 0.0f);
                Vector3 test = Click - this.transform.position;
                this.transform.rotation = Quaternion.LookRotation(test);
            }
        }
    }

    void moveFuntion()
    {
        if(choose)
        {
            Click_check();

            if (select)
            {
                Field_select();
            }
        }
        
        if (bMove)
        {
            transform.position = Vector3.MoveTowards(transform.position, Click, MoveSpeed * Time.deltaTime);
            //this.transform.rotation = Quaternion.;

            float x_diff = this.transform.position.x - Click.x;
            float z_diff = this.transform.position.z - Click.z;

            if (x_diff < 0) x_diff *= -1;
            if (z_diff < 0) z_diff *= -1;

            if (x_diff < 0.01f && z_diff < 0.01f)
            {
                Debug.Log(this.transform.position);
                choose = true;
                bMove = false;
            }
        }
    }
    
    // Use this for initialization
    void Start ()
    {
        MoveSpeed = 3f;
        maxDis = 5.6f;
        player = GameObject.FindWithTag("Player");
        field = GameObject.FindWithTag("Field");
        floor = GameObject.FindWithTag("Floor");
        stair = GameObject.FindWithTag("Stair");
        enemy = GameObject.FindWithTag("Enemy");
        next_turn = GameObject.FindWithTag("Next_turn");

        turn = GameObject.FindWithTag("Next_turn").GetComponent<Turn>();
    }

    // Update is called once per frame
    void Update()
    {
        moveFuntion();
    }
}
