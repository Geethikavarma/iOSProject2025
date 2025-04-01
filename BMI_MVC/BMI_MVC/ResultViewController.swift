//
//  ResultViewController.swift
//  BMI_MVC
//
//  Created by Geethika Kolukuluri on 3/25/25.
//

import UIKit

class ResultViewController: UIViewController {

  
    @IBOutlet weak var hfeetEnteredOL: UILabel!
    
    @IBOutlet weak var hinchesEnteredOL: UILabel!
    
    @IBOutlet weak var wlbsEnteredOL: UILabel!
    
    @IBOutlet weak var outputOL: UILabel!
    
    @IBOutlet weak var imageOL: UIImageView!
    
    var enteredhfeet = ""
    var enteredhinches = ""
    var enteredwlbs = ""
    var result = ""
    var healthtip = ""
    var image = ""
    var category = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        hfeetEnteredOL.text! += enteredhfeet
        hinchesEnteredOL.text! += enteredhinches
        wlbsEnteredOL.text! += enteredwlbs
        outputOL.text! += "You BMI is: \(result)\rYour BMI comes under \(category) category\r\(healthtip)"
        
        imageOL.image = UIImage(named: image)
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
