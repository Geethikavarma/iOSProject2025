//
//  ViewController.swift
//  HelloApp
//
//  Created by Geethika Kolukuluri on 1/21/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputOL: UITextField!
    
    @IBOutlet weak var outputOL: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func submitBtnClicked(_ sender: UIButton) {
        //Read the text field or user input and assign it to a variable
        var name = inputOL.text!
        outputOL.text = "Hello,\(name)!"
        
        //display the output in ("Hello,\(name)!")
        
        
    }
    
}

