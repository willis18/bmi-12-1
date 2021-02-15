//
//  ViewController.swift
//  bmi 12-1
//
//  Created by 김송현 on 2021/02/10.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var txtHeight: UITextField!
    @IBOutlet var txtWeight: UITextField!
    @IBOutlet var lblResult: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func calcBmi(_ sender: UIButton)
    {
        if txtHeight.text == "" || txtWeight.text == ""
        {
            print("Input Error")
            lblResult.text = "키와 체중을 입력하세요!"
            return
        }
        else
        {
            let height = Double(txtHeight.text!)!
            let weight = Double(txtWeight.text!)!
//            print(height, weight)
            
            let bmi = weight / (height * height * 0.0001)
            let shortenedBmi = String(format:
                                        "%.1f",bmi)
            var body = ""
            if bmi >= 40
            {
                body = "3단계 미만"
            }
            else if bmi >= 30 && bmi < 40
            {
                body = "2단계 미만"
            }
            else if bmi >= 25 && bmi < 30
            {
                body = "1단계 미만"
            }
            else if bmi >= 18.5 && bmi < 25
            {
                body = "정상"
            }
            else
            {
                body = "저체중"
            }
//            print("BMI : \(shortenedBmi), 판정 : \(body)")
            lblResult.text = "BMI : \(shortenedBmi), 판정 : \(body)"
        }
    }
}
