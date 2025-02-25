//
//  ViewController.swift
//  Kolukuluri_Exam01
//
//  Created by Geethika Kolukuluri on 2/25/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pm2OL: UITextField!
    
    @IBOutlet weak var pm10OL: UITextField!
    
    @IBOutlet weak var imageOL: UIImageView!
    
    @IBOutlet weak var outputOL: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func checkBtnClicked(_ sender: UIButton) {
        //caluclate the result and diplay the output when check button clicked.
        //display to enter valid values if any of the input fields is empty.
        if pm2OL.text!.isEmpty || pm10OL.text!.isEmpty {
            outputOL.text = "Please enter the input values for PM2.5 and PM10."
        //display to enter valid values if entered any text like characters or string values.
        }else if !pm2OL.text!.allSatisfy({ ("0"..."9").contains($0) || $0 == "." }) || !pm10OL.text!.allSatisfy({ ("0"..."9").contains($0) || $0 == "." }) {
            
            outputOL.text = "Please enter valid numerical values for PM2.5 and PM10."
        }
        
        else {
            //declare the variables
            let pm2Value = Double(pm2OL.text!)!
            let pm10Value = Double(pm10OL.text!)!
            //caluclate result as res=(pm2value+pm10value)/2
            let result = (pm2Value+pm10Value)/2
         //if result < 50 then air quality is best.
        if result < 50 {
            outputOL.text = "The AQC value is \(result).\rThis air quality is considered to be best👍 quality air. "
            imageOL.image = UIImage(named: "Best")
        //if result is in between 50 and 100 then air quality is moderate.
        }else if result >= 50 && result < 100 {
            outputOL.text = "The AQC value is \(result).\rThis air quality is considered to be moderate quality air.😕 "
            imageOL.image = UIImage(named: "Moderate")
        //if greater than 100 then air quality is poor
        }else{
            outputOL.text = "The AQC value is \(result).\rThis air quality is considered to be Poor quality air.😢 "
            imageOL.image = UIImage(named: "Poor")
            
        }
            
        }
    }
    
    @IBAction func reserBtnClicked(_ sender: UIButton) {
        //reset all the values to nil.
        pm2OL.text = ""
        pm10OL.text = ""
        outputOL.text = ""
        imageOL.image = nil
    }
}

