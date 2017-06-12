using UnityEngine;
using System.Collections;
using UnityEngine.AI;

public class Move : MonoBehaviour {

    public Camera MainCamera;
    float MoveSpeed;
    float maxDis;
    public Turn turn;
    Animator ani;
    NavMeshAgent _Navi;

    Vector3 Click;
    Ray ray;
    RaycastHit Hit;

    public GameObject _Button;
    public GameObject effect;
    public GameObject burst;
    public GameObject bullet;

    GameObject player;
    GameObject field;
    GameObject floor;
    GameObject stair;
    GameObject stair_down;
    GameObject enemy;
    GameObject next_turn;

    GameObject water_goal;
    GameObject fire_goal;

    public static int water_mana;
    public static int fire_mana;
    float distance;
    bool choose = true;
    bool bMove = false;
    bool select = false;
    public static int pTurn;
    bool pNum;

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
                        Debug.Log("선택");
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
                        //Hit.collider.gameObject.GetComponent<Renderer>().material.color = Color.blue;
                        select = true;
                        Debug.Log("선택");
                    }
                }
            }
        }
    }

    void Field_select()
    {
        if (Hit.collider.tag == "Field")
        {
            distance = Vector3.Distance(this.transform.position, Hit.transform.position);
            Click = Hit.transform.gameObject.transform.position;
            Debug.Log(distance);

            Mana_check();

            if (distance <= maxDis)
            {
                Mana_reduce();
                //Click = Hit.transform.gameObject.transform.position;
                //GetComponent<Renderer>().material.color = Color.white;
                bMove = true;
                select = false;
                choose = false;
                //Click = Hit.transform.gameObject.transform.position + new Vector3(0.0f, 0.44f, 0.0f);
                //Vector3 test = Click - this.transform.position;
                //this.transform.rotation = Quaternion.LookRotation(test);
            }
        }
        else if(Hit.collider.tag != "Field")
        {
            Kill();
            Goal();
        }
    }

    void changerotation()
    {

        Click = Hit.transform.gameObject.transform.position + new Vector3(0.0f, 0.44f, 0.0f);
        Vector3 test = Click - this.transform.position;
        this.transform.rotation = Quaternion.LookRotation(test);
    }
    void enemy_select()
    {
        if (pTurn == 0)
        {
            if (Hit.collider == null)
            {
                return;
            }
            if (Hit.collider.tag == "Enemy")
            {
                if(water_mana > 0)
                {
                    Debug.Log("파란팀의 공격!");
                    //  hp --;
                    ani.SetTrigger("isattack");

                    changerotation();
                }
            }
        }


        if (pTurn == 1)
        {
            if (Hit.collider == null)
            {
                return;
            }
            if (Hit.collider.tag == "Player")
            {
                if(fire_mana > 0)
                {
                    Debug.Log("빨간팀의 공격!");
                    ani.SetTrigger("isattack");

                    changerotation();
                }
            }
        }


    }
    void Goal()
    {
        if (pTurn == 0)
        {
            if(Hit.collider.tag == "fire_goal")
            {
                distance = Vector3.Distance(this.transform.position, Hit.transform.position);

                if(distance <= 1.7f)
                {
                    Debug.Log("water win");
                    pNum = true;
                    bMove = false;
                    select = false;
                    choose = false;
                }
            }
        }
        else if (pTurn == 1)
        {
            if (Hit.collider.tag == "water_goal")
            {
                float distance = Vector3.Distance(this.transform.position, Hit.transform.position);

                if(distance <= 1.7f)
                {
                    Debug.Log("fire win");
                    pNum = true;
                    bMove = false;
                    select = false;
                    choose = false;
                }
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
                enemy_select();
                Field_select();
            }
        }
        
        if (bMove)
        {
            Moving();
            //transform.position = Vector3.MoveTowards(transform.position, Click, MoveSpeed * Time.deltaTime);
            ////this.transform.rotation = Quaternion.;
            //
            //float x_diff = this.transform.position.x - Click.x;
            //float z_diff = this.transform.position.z - Click.z;
            //
            //if (x_diff < 0) x_diff *= -1;
            //if (z_diff < 0) z_diff *= -1;
            //
            //if (x_diff < 0.01f && z_diff < 0.01f)
            //{
            //    //Debug.Log(this.transform.position);
            //    choose = true;
            //    bMove = false;
            //}
        }
    }

    void Moving()
    {
        if (Input.GetMouseButton(0))
        {

            ani.SetBool("Move", true);
            Ray ray = MainCamera.ScreenPointToRay(Input.mousePosition);
            RaycastHit Hit;

            if (Physics.Raycast(ray, out Hit, Mathf.Infinity))
            {
                _Navi.SetDestination(Click);
            }
        }

        if (transform.position == _Navi.destination) return;

        float dis = Vector3.Distance(_Navi.destination, transform.position);

        if (dis < 0.2f)
        {
            transform.position = _Navi.destination;
            choose = true;
            bMove = false;

            ani.SetBool("Move", false);
        }
    }

    void Mana_check()
    {
        if(pTurn == 0)
        {
            if (water_mana >= 3) maxDis = 6.0f;
            if (water_mana == 2) maxDis = 4.4f;
            if (water_mana == 1) maxDis = 2.4f;
            if (water_mana == 0) maxDis = 0;
        }

        if(pTurn == 1)
        {
            if (fire_mana >= 3) maxDis = 6.0f;
            if (fire_mana == 2) maxDis = 4.4f;
            if (fire_mana == 1) maxDis = 2.4f;
            if (fire_mana == 0) maxDis = 0;
        }
    }

    void Mana_reduce()
    {
        if(pTurn == 0)
        {
            //fire_mana = 5;

            if(distance <= 2.4f)
            {
                if(distance > 0.1f) water_mana -= 1;
            }
            if(2.7f < distance)
            {
                if(distance <= 4.4f) water_mana -= 2;
            }
            if(4.4f < distance)
            {
                water_mana -= 3;
            }
        }

        if (pTurn == 1)
        {
            //water_mana = 5;

            if (distance <= 2.4f)
            {
                if (distance > 0.1f) fire_mana -= 1;
            }
            if (2.7f < distance)
            {
                if (distance <= 4.4f) fire_mana -= 2;
            }
            if (4.4f < distance)
            {
                fire_mana -= 3;
            }
        }

        if (water_mana < 0) water_mana = 0;
        if (fire_mana < 0) fire_mana = 0;
    }

    void Kill()
    {
        distance = Vector3.Distance(this.transform.position, Hit.transform.position);
        Vector3 bullet_position = Hit.collider.transform.position + new Vector3(0.0f, 0.44f, 0.0f);

        if (pTurn == 0)
        {
            if (water_mana > 0)
            {
                if (Hit.collider.tag == "Enemy")
                {
                    if (distance <= 2.0f)
                    {

                        Instantiate(bullet, bullet_position, Quaternion.identity);
                        Vector3 effect_position = this.gameObject.transform.position + new Vector3(0.0f, 0.6f, 0.0f);
                        Vector3 burst_position = Hit.collider.transform.position + new Vector3(0.0f, 0.6f, 0.0f);
                        Click = Hit.transform.gameObject.transform.position + new Vector3(0.0f, 0.44f, 0.0f);
                        Vector3 test = Click - this.transform.position;
                        this.transform.rotation = Quaternion.LookRotation(test);
                        Instantiate(effect, effect_position, this.transform.rotation);
                        Instantiate(burst, burst_position, Hit.collider.transform.rotation);
                        // Destroy(Hit.collider.gameObject);
                        select = false;
                        choose = true;
                        water_mana -= 1;
                    }
                }
            }
        }
        if (pTurn == 1)
        {
            if(fire_mana > 0)
            {
                if (Hit.collider.tag == "Player")
                {
                    if (distance <= 2.0f)
                    {

                        Instantiate(bullet, bullet_position, Quaternion.identity);
                        Vector3 effect_position = this.gameObject.transform.position + new Vector3(0.0f, 0.6f, 0.0f);
                        Vector3 burst_position = Hit.collider.transform.position + new Vector3(0.0f, 0.6f, 0.0f);
                        Click = Hit.transform.gameObject.transform.position + new Vector3(0.0f, 0.44f, 0.0f);
                        Vector3 test = Click - this.transform.position;
                        this.transform.rotation = Quaternion.LookRotation(test);
                        Instantiate(effect, effect_position, this.transform.rotation);
                        Instantiate(burst, burst_position, Hit.collider.transform.rotation);
                        // Destroy(Hit.collider.gameObject);
                        select = false;
                        choose = true;
                        fire_mana -= 1;
                    }
                }
            }
        }
    }
    void Awake()
    {
        _Navi = GetComponent<NavMeshAgent>();
    }
    
    // Use this for initialization
    void Start ()
    {
        MoveSpeed = 3f;
        maxDis = 5.7f;
        pNum = false;
        //water_mana = 5;
        //fire_mana = 5;

        player = GameObject.FindWithTag("Player");
        field = GameObject.FindWithTag("Field");
        floor = GameObject.FindWithTag("Floor");
        stair = GameObject.FindWithTag("Stair");
        enemy = GameObject.FindWithTag("Enemy");
        next_turn = GameObject.FindWithTag("Next_turn");

        water_goal = GameObject.FindWithTag("water_goal");
        fire_goal = GameObject.FindWithTag("fire_goal");

        ani = gameObject.GetComponentInChildren<Animator>();
        turn = GameObject.FindWithTag("Next_turn").GetComponent<Turn>();
    }

    // Update is called once per frame
    void Update()
    {
        moveFuntion();
        if(pNum)
        {
            win_color.num += 0.01f;
            _Button.SetActive(true);
        }
    }
}

