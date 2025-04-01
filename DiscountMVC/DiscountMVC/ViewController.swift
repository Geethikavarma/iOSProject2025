//
//  ViewController.swift
//  DiscountMVC
//
//  Created by Geethika Kolukuluri on 3/20/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var amountOL: UITextField!
    
    @IBOutlet weak var discRateOL: UITextField!
    
    //create a globalvariable to access in all view Controllers
    var finalAmount:Double = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calcBtnClicked(_ sender: UIButton) {
        //read the amountOL and convert it into double
        var amount = Double(amountOL.text!)!
        
        //read the discRateOL and convert it into double
        var discRate = Double(discRateOL.text!)!
        
        //calculate Price after discount and assign it to finalAmount variable
        finalAmount = amount * (1 - discRate/100)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transition = segue.identifier
        if transition == "ResultSegue" {
            var destination = segue.destination as! ResultViewController
            destination.amount = amountOL.text!
            destination.discount = discRateOL.text!
            destination.finalAmount = String(finalAmount)
            
        }
    }
    
}

