//
//  ViewController.swift
//  VoterEligibilityApp
//
//  Created by Geethika Kolukuluri on 1/23/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputOl: UITextField!
    
    @IBOutlet weak var imageViewOl: UIImageView!
    
    @IBOutlet weak var outputOl: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func submitBtn(_ sender: UIButton) {
        //Read the age variable from input
        var age:Int = Int(inputOl.text!)!
        //if age>18 display eligible otherwise not elgible.
        //display the image accordingly.
        if age >= 18 {
            imageViewOl.image = UIImage(named: "vote")
            outputOl.text = "You are eligible to vote"
        }else {
            imageViewOl.image = UIImage(named: "noVote")
            outputOl.text = "You are not eligible to vote"
        }
    }
    
}

