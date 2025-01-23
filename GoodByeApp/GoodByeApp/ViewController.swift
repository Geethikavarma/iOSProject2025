//
//  ViewController.swift
//  GoodByeApp
//
//  Created by Geethika Kolukuluri on 1/21/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lInputOL: UITextField!
    
    
    @IBOutlet weak var fInputOL: UITextField!
    
    @IBOutlet weak var outputOL: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func submitBtnAction(_ sender: UIButton!) {
        
        //assign the linputOL and finputOL to two seperate variables
        var fName = fInputOL.text!
        
        var lName = lInputOL.text!
        
        outputOL.text = "GoodBye,\(fName) \(lName)!"
        
        //display the output in("GoodBye,\(fName) \(lName) !")
    }
    
}

