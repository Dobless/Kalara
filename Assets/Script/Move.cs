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

    bool bMove = false;
    bool Select = false;
    int pTurn;

    void moveFuntion()
    {

        if (Input.GetMouseButton(0))
        {
            pTurn = Turn.iTurn;
            ray = MainCamera.ScreenPointToRay(Input.mousePosition);
            Physics.Raycast(ray, out Hit, Mathf.Infinity);

            if (pTurn == 0)
            {
                if(Hit.collider == null)
                {
                    return;
                }
                if (Hit.collider.tag == "Player")
                {
                    if (Hit.collider.gameObject == this.gameObject)
                    {
                        Hit.collider.gameObject.GetComponent<Renderer>().material.color = Color.blue;
                        Select = true;
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
                        Select = true;
                    }
                }
            }

            if (Select)
            {
                if (Hit.collider.tag == "Field")
                {
                    float distance = Vector3.Distance(this.transform.position, Hit.transform.position);
                    if (distance <= maxDis)
                    {
                        GetComponent<Renderer>().material.color = Color.white;
                        bMove = true;
                        Select = false;
                        Click = Hit.transform.gameObject.transform.position + new Vector3(0.0f, 1.44f, 0.0f);
                        Vector3 test = Click - this.transform.position;
                        this.transform.rotation = Quaternion.LookRotation(test);
                    }
                }
            }
        }

        if (bMove)
        {
            
            
            transform.position = Vector3.MoveTowards(transform.position, Click, MoveSpeed * Time.deltaTime);
            if (this.transform.position.x == Click.x && this.transform.position.z == Click.z)
            {
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
