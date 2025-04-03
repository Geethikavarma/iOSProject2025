//
//  ResultViewController.swift
//  Kolukuluri_Exam02
//
//  Created by Geethika Kolukuluri on 4/3/25.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var enteredGoalOL: UILabel!
    
    @IBOutlet weak var enteredAmountOL: UILabel!
    
    @IBOutlet weak var enteredInterestOL: UILabel!
    
    @IBOutlet weak var savingsOL: UILabel!
    
    @IBOutlet weak var imageOL: UIImageView!
    
    var enteredGoal = ""
    var enteredAmount = ""
    var enteredInterest = ""
    var calculatedSavings = ""
    var image = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        enteredGoalOL.text! += "\(enteredGoal)"
        enteredAmountOL.text! += "\(enteredAmount)"
        enteredInterestOL.text! += "\(enteredInterest)"
        savingsOL.text! += "\(calculatedSavings)"
        imageOL.image = UIImage(named: image)
        imageOL.alpha = 0.0
        UIView.animate(withDuration: 1.5) {
            self.imageOL.alpha = 1.0
        }
        
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
