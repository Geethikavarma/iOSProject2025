//
//  ViewController.swift
//  BMI_MVC
//
//  Created by Geethika Kolukuluri on 3/25/25.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var hFeetOL: UITextField!
    
    @IBOutlet weak var hInchesOL: UITextField!
    
    @IBOutlet weak var wlbsOL: UITextField!
    
    var feet = 0
    var inches = 0
    var lbs = 0
    var bmi = 0.0
    var category = ""
    var imgName = ""
    var healthAdvice = ""
    var res = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func CalculteBtn(_ sender: UIButton) {
        //read the input and covert to integer
        var hFeet = Int(hFeetOL.text!)!
        var hInches = Int(hInchesOL.text!)!
        var wlbs = Int(wlbsOL.text!)!
        
        //convert the height into inches and assign to a new variable
        var height: Int = (hFeet * 12) + hInches
        
        //calculate the BMI = 703 * (weight/(height*height))
        bmi = 703 * Double(wlbs) / pow(Double(height), 2)
        
        //format the string to nearest 1 decimal
        res = String(format: "%.1f", bmi)
        
        if bmi < 18.5 {
            category = "Underweight"
            imgName = "underWeight"
            healthAdvice = "Eat more protein and healthy fats."
        }else if bmi >= 18.5 && bmi <= 24.9 {
            category = "Normal"
            imgName = "normal"
            healthAdvice = "Excellent!Maintain a balanced lifestyle."
        }else if bmi > 25 && bmi <= 29.9 {
            category = "Overweight"
            imgName = "overWeight"
            healthAdvice = "Loose weight by maintaining a balanced diet less and increasing physical activity."
        }else if bmi > 30 {
            category = "Obese"
            imgName = "obese"
            healthAdvice = "Consult a doctor for personalized advice."
        }
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transition = segue.identifier
        if transition == "resultSegue" {
            var destination = segue.destination as! ResultViewController
            destination.enteredhfeet = (hFeetOL.text!)
            destination.enteredhinches = (hInchesOL.text!)
            destination.enteredwlbs = (wlbsOL.text!)
            destination.result = res
            destination.healthtip = healthAdvice
            destination.image = imgName
            destination.category = category
            
        }
    }
    
}

