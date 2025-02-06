//
//  ViewController.swift
//  Kolukuluri_Assignment02
//
//  Created by Geethika Kolukuluri on 2/1/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameOutlet: UITextField!
    
    @IBOutlet weak var billAmountOutlet: UITextField!
    
    @IBOutlet weak var tipPercentageOutlet: UITextField!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var billAmountLabel: UILabel!
    
    @IBOutlet weak var tipAmountLabel: UILabel!
    
    @IBOutlet weak var totalAmountLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

   
    @IBAction func SubmitBtn(_ sender: UIButton) {
        //read the nameOutlet input into a variable name
        //read the billAmountOutlet input into variable billAmount
        //read the tipPercentageOutlet input into variable tipPercentage
        
        var name = nameOutlet.text!
        var billAmount = Double(billAmountOutlet.text!)!
        var tipPercentage = Double(tipPercentageOutlet.text!)!
        //caluclate the tip amount using the given tipPercentage
        let tipAmount = (billAmount * tipPercentage) / 100
        let totalAmount = billAmount + tipAmount
        
        //round up all the values to the nearest two decimal values.
        let roundBillAmount = String(format: "%.2f",billAmount)
        let roundTipAmount = String(format: "%.2f",tipAmount)
        let roundTotalAmount = String(format: "%.2f",totalAmount)
        //print the output.
        nameLabel.text = "Name: \(name)"
        billAmountLabel.text = "Bill Amount: $\(roundBillAmount)"
        tipAmountLabel.text = "Tip Amount: $\(roundTipAmount)"
        totalAmountLabel.text = "Total Amount: $\(roundTotalAmount)"
        
    }
    
    @IBAction func ResetBtn(_ sender: UIButton) {
        //erase all the details entered and displayed.
        nameOutlet.text = ""
        billAmountOutlet.text = ""
        tipPercentageOutlet.text = ""
        nameLabel.text = ""
        billAmountLabel.text = ""
        tipAmountLabel.text = ""
        totalAmountLabel.text = ""
    }
    
}

