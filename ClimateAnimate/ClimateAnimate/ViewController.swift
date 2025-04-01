//
//  ViewController.swift
//  ClimateAnimate
//
//  Created by Geethika Kolukuluri on 3/12/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputOL: UITextField!
    
    @IBOutlet weak var imageOL: UIImageView!
    
    @IBOutlet weak var outputOL: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func submitBtnClicked(_ sender: Any) {
        //read the input in int and assign it a variable
        var temp = Int(inputOL.text!)!
        //check whether it is cold or hot
        //declare hot if temp>60 otherwise declare cold
        if temp>60{
            //assign the image to imageOL and output to outputOL
            //animate the image
            UIView.animate(withDuration: 0.5, animations: {
                self.imageOL.alpha = 0.0
                
            })
            UIView.animate(withDuration: 0.5, delay: 0.5, usingSpringWithDamping: 0.2, initialSpringVelocity: 0.6, animations: {
                self.imageOL.alpha = 1.0//Fade Out
                self.imageOL.image = UIImage(named: "hot")

            })
            outputOL.text = "It is hot outside☀️🥵"
        }
        else{
            UIView.animate(withDuration: 0.5, animations: {
                self.imageOL.alpha = 0.0
                
            })
            UIView.animate(withDuration: 0.5,delay: 0.5, usingSpringWithDamping: 0.2, initialSpringVelocity: 0.5, animations: {
                self.imageOL.alpha = 1.0 //Fade in
                self.imageOL.image = UIImage(named: "cold")

            })
            outputOL.text = "It is cold outside❄️🥶"
        }
        
    }
    
}

