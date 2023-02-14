using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Orbit : MonoBehaviour
{

    [SerializeField] private GameObject target;
    [SerializeField] private float degreesPerSecond = 45;

    // Update is called once per frame
    void Update()
    {
        if (target)
        {
            transform.Rotate(Vector3.up, degreesPerSecond *2.5f* Time.deltaTime);
            transform.Rotate(Vector3.left, degreesPerSecond * 2.5f * Time.deltaTime);

            transform.RotateAround(target.transform.position, Vector3.up, degreesPerSecond * Time.deltaTime);
            

        }
    }
}