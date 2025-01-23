//
//  ViewController.swift
//  ClimateApp
//
//  Created by Geethika Kolukuluri on 1/23/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputOL: UITextField!
    
    
    @IBOutlet weak var outputOL: UILabel!
 
    
    @IBOutlet weak var imageViewOL: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func submitBtnClicked(_ sender: UIButton) {
        //Read the temperature
        //convert the input to Double
        var temp = Double(inputOL.text!)!
        //check whether cold or hot
        //temp>60 (hot) else cold.
        //Display the appropriate image.
        if temp > 60.0 {
            outputOL.text!="It is hot outside.🥵🔥"
            imageViewOL.image=UIImage(named:"hot weather")
        }
        else{
            outputOL.text!="It is cold outside.🥶❄️"
            imageViewOL.image=UIImage(named:"cold")
        }
        
    }
    
}

