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
            var color = UIColor.white
            if bmi >= 40
            {
                color = UIColor(displayP3Red: 1.0, green: 0.0, blue: 0.0, alpha: 1.0)
                body = "3단계 미만"
            }
            else if bmi >= 30 && bmi < 40
            {
                color = UIColor(displayP3Red: 0.7, green: 0.0, blue: 0.0, alpha: 1.0)
                body = "2단계 미만"
            }
            else if bmi >= 25 && bmi < 30
            {
                color = UIColor(displayP3Red: 0.4, green: 0.0, blue: 0.0, alpha: 1.0)
                body = "1단계 미만"
            }
            else if bmi >= 18.5 && bmi < 25
            {
                color = UIColor(displayP3Red: 0.0, green: 0.0, blue: 1.0, alpha: 1.0)
                body = "정상"
            }
            else
            {
                color = UIColor(displayP3Red: 0.0, green: 1.0, blue: 0.0, alpha: 1.0)
                body = "저체중"
            }
//            print("BMI : \(shortenedBmi), 판정 : \(body)")
            lblResult.backgroundColor = color
            lblResult.clipsToBounds = true
            lblResult.layer.cornerRadius = 10
            lblResult.text = "BMI : \(shortenedBmi), 판정 : \(body)"
        }
    }
}
