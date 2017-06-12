using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class attackbullet : MonoBehaviour
{
    

  

    //  public static float damage;
    

    // Use this for initialization
    void Start()
    {
        //   damage = 1;

    }
    void OnTriggerEnter(Collider collision)
    {

        if (Move.pTurn == 0)
        {
            if (collision.CompareTag("Player"))
            {
                Debug.Log("충돌");
                // hp--;
                GameObject.Destroy(gameObject);

            }

        }



        else if (Move.pTurn == 1)
        {
            if (collision.CompareTag("Enemy"))
            {
                Debug.Log("충돌");
                // hp--;
                GameObject.Destroy(gameObject);
                
            }

        }
    }
    /*  if (collision.CompareTag("Enemy"))
      {
          Debug.Log("충돌");

          GameObject.Destroy(gameObject);

          unitmaneger.hitFuntion();
      }      */
    // Update is called once per frame
    void Update()
    {

    }


}
