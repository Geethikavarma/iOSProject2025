//
//  ViewController.swift
//  Kolukuluri_BillCalculator
//
//  Created by Geethika Kolukuluri on 4/3/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var amountOL: UITextField!
    
    @IBOutlet weak var tipOL: UITextField!
    
    @IBOutlet weak var personsOL: UITextField!

    
    //Declare global variables to access in resultViewController
    var billAmount = 0.0
    var tipPercentage = 0
    var personNumber = 0
    var tipAmount = 0.0
    var amountPerPerson = 0.0
    var image = ""
    var totAmount = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateBtnClicked(_ sender: UIButton) {
        
        if Int(amountOL.text!)! <= 0 || Int(tipOL.text!)! < 0 || Int(personsOL.text!)! <= 0 {
            tipAmount = 0
            amountPerPerson = 0
            totAmount = 0
            image = "invalid"
            tipPercentage = 0
            billAmount = 0
            personNumber = 0
        }else{
            
            //assign the text field values to the variables.
            billAmount = Double(amountOL.text!)!
            tipPercentage = Int(tipOL.text!)!
            personNumber = Int(personsOL.text!)!
            
            //calculate the tip amount
            tipAmount = billAmount * (Double(tipPercentage)/100)
            totAmount = billAmount + tipAmount
            //calculate the amount each person should pay.
            amountPerPerson = (billAmount+tipAmount) / Double(personNumber)
            
            //assign image according to tipAmount
            if tipAmount > 20.0 {
                image = "best"
            } else if tipAmount > 10.0 {
                image = "better"
            } else if tipAmount > 5.0 {
                image = "good"
            } else {
                image = "thankYou"
            }
        }

    }
    
    
    @IBAction func resetBtnClicked(_ sender: UIButton) {
        
        //clear all the text fields.
        amountOL.text = ""
        personsOL.text = ""
        tipOL.text = ""
    }
    
    // access the resultViewController through segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transition = segue.identifier
        if transition == "ResultSegue" {
            var destination = segue.destination as! ResultViewController
            destination.enteredAmount = String(billAmount)
            destination.enteredTip = String(tipPercentage)
            destination.enteredPersons = String(personNumber)
            destination.calculatedTipAmount = String(format:"%.2f",tipAmount)
            destination.calculatedAmountPerPerson = String(format:"%.2f",amountPerPerson)
            destination.totalAmount = String(format:"%.2f",totAmount)
            destination.imageVal = image
        }
    }
    
    //all the values will be cleared after coming back to home page
    override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
            
            // Reset all input fields
        amountOL.text = ""
        tipOL.text = ""
        personsOL.text = ""
           
        }
    
}

