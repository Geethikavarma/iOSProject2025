//
//  ViewController.swift
//  Initials App
//
//  Created by Geethika Kolukuluri on 1/30/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fNameOL: UITextField!
    
    @IBOutlet weak var lNameOL: UITextField!
    
    @IBOutlet weak var outputOL: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func submitBtn(_ sender: UIButton) {
        //read the input fNameOL and store it in fName variable
        //read the input lNameOL and store it in lName Variable
        let fName:String = fNameOL.text!
        let lName:String = lNameOL.text!
        let initials = "\(fName[fName.startIndex]).\(lName[lName.startIndex])"
        
        //get the first letter of first name and first letter of last name and string interpolate with periods and print them in uppercase
        
        outputOL.text! = "your Initials are : \(initials.uppercased())."
        
        
    }
}

