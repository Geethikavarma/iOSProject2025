//
//  ViewController.swift
//  Kolukuluri_PracticeExam01
//
//  Created by Geethika Kolukuluri on 2/20/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var hFeetOL: UITextField!
    
    @IBOutlet weak var hInchOL: UITextField!
    
    @IBOutlet weak var weightOL: UITextField!
    
    @IBOutlet weak var outputOL: UILabel!
    
    
    @IBOutlet weak var imageOL: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func calcBtnClicked(_ sender: UIButton) {
        //take hFeetOL,hInchOL and weighOL as inputs
        var hFeet:Int = Int(hFeetOL.text!)!
        var hInch:Int = Int(hInchOL.text!)!
        var weight:Int = Int(weightOL.text!)!
        
        //convert the height into inches and assign to a new variable
        var height: Int = (hFeet * 12) + hInch
        
        //calculate the BMI = 703 * (weight/(height*height))
        var bmi: Double = 703 * Double(weight) / pow(Double(height), 2)
        
        //format the string to nearest 1 decimal
        var res: String = String(format: "%.1f", bmi)
        
        //check the conditions and print result and display image.
        if bmi <= 18.5 {
            imageOL.image = UIImage(named: "underWeight")
            outputOL.text = "Your Body Mass Index is \(res).\rThis is Considered Underweight.\rHealth tip: Eat more protein and healthy fats."
        }else if bmi > 18.6 && bmi <= 24.9 {
            imageOL.image = UIImage(named: "normal")
            outputOL.text = "Your Body Mass Index is \(res).\nThis is Considered Normal.\nHealth tip: Excellent!Maintain a balanced lifestyle."
        }else if bmi > 25 && bmi <= 29.9 {
            imageOL.image = UIImage(named: "overWeight")
            outputOL.text = "Your Body Mass Index is \(res).\nThis is Considered Overweight.\nHealth tip: Loose weight by maintaining a balanced diet less and increasing physical activity."
        }else if bmi > 30 {
            imageOL.image = UIImage(named: "obese")
            outputOL.text = "Your Body Mass Index is \(res).\nThis is Considered Obese.\nHealth tip: Consult a doctor for personalized advice."
        }
    }
}

