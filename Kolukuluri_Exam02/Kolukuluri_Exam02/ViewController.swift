//
//  ViewController.swift
//  Kolukuluri_Exam02
//
//  Created by Geethika Kolukuluri on 4/3/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var goalOL: UITextField!
    
    @IBOutlet weak var amountOL: UITextField!
    
    @IBOutlet weak var interestOL: UITextField!
    
    @IBOutlet weak var timeOL: UITextField!
    
    @IBOutlet weak var calculateBtnOL: UIButton!
    
    @IBOutlet weak var ResetBtnOL: UIButton!
    var amount = 0.0
    var goal = ""
    var interest = 0.0
    var time = 0
    var totalMonths = 0.0
    var monthlyInterestRate = 0.0
    var monthlySavingsPayment = ""
    var imageVal = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateBtnClicked(_ sender: UIButton) {
        var timePeriod = Int(timeOL.text!)!
        interest = Double(interestOL.text!)!
        amount = Double(amountOL.text!)!
        goal = goalOL.text!
        totalMonths = Double(timePeriod) * 12
        monthlyInterestRate = (interest / 100) / 12
        monthlySavingsPayment = String(format: "%.2f",amount/((pow(1+monthlyInterestRate,totalMonths)-1)/monthlyInterestRate))
        if goal == "car"{
            imageVal = "car"
        }else if goal == "house"{
            imageVal = "house"
        }else if goal == "vacation"{
            imageVal = "vacation"
        }
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transition = segue.identifier
        if transition == "ResultSegue" {
            var destination = segue.destination as! ResultViewController
            destination.enteredGoal = goal
            destination.enteredAmount = String(amount)
            destination.enteredInterest = String(interest)
            destination.calculatedSavings = String(monthlySavingsPayment)
            destination.image = imageVal
            
        }
    }
    
    @IBAction func resetBtnClicked(_ sender: UIButton) {
        amountOL.text = ""
        interestOL.text = ""
        timeOL.text = ""
        goalOL.text = ""
        calculateBtnOL.isEnabled = false
        ResetBtnOL.isEnabled = false
        
    }
    
    
    @IBAction func textFields(_ sender: UITextField) {
        if !(goalOL.text!.isEmpty) && !(amountOL.text!.isEmpty) && !(interestOL.text!.isEmpty) && !(timeOL.text!.isEmpty){
            calculateBtnOL.isEnabled = true
            ResetBtnOL.isEnabled = true
        }else{
            calculateBtnOL.isEnabled = false
            ResetBtnOL.isEnabled = false
        }
    }
    override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
            
            // Reset all input fields
            goalOL.text = ""
            amountOL.text = ""
            interestOL.text = ""
            timeOL.text = ""
           
        }

    
    }
    


