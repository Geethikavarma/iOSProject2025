//
//  ViewController.swift
//  SimpleInterestCalculator
//
//  Created by Geethika Kolukuluri on 3/27/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var principalOL: UITextField!
    
    @IBOutlet weak var rateOfInterestOL: UITextField!
    
    @IBOutlet weak var timeOL: UITextField!
    
    var category = ""
    var principal = 0.0
    var roi = 0.0
    var time = 0.0
    var img = ""
    var interest = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func CalcBtn(_ sender: UIButton) {
        
        principal = Double(principalOL.text!)!
        roi = Double(rateOfInterestOL.text!)!
        time = Double(timeOL.text!)!
        
        interest = (principal * roi * time)/100
        
        if interest < 100 {
            category = "Low"
            img = "low"
        }else if interest<500{
            category = "Medium"
            img = "medium"
        }else {
            category = "High"
            img = "high"
        }
        
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transition = segue.identifier
        if transition == "ResultSegue" {
            var destination = segue.destination as! ResultViewController
            destination.imageVal = img
            destination.interestVal = String(interest)
            destination.principalVal = principalOL.text!
            destination.roiVal = rateOfInterestOL.text!
            destination.timeVal = timeOL.text!
            destination.cat = category
        }
    }
    
    
}

