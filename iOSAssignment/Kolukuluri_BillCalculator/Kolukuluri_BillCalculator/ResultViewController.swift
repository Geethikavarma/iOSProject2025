//
//  ResultViewController.swift
//  Kolukuluri_BillCalculator
//
//  Created by Geethika Kolukuluri on 4/3/25.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var enteredAmountOL: UILabel!
    
    @IBOutlet weak var enteredTipOL: UILabel!
    
    @IBOutlet weak var tipAmountOL: UILabel!
    
    @IBOutlet weak var enteredPersonsOL: UILabel!
    
    @IBOutlet weak var amountPerPersonOL: UILabel!
    
    @IBOutlet weak var imageOL: UIImageView!
    
    @IBOutlet weak var totalAmountOL: UILabel!
    
    
    
    //Declare global Variables
    var enteredAmount = ""
    var enteredTip = ""
    var calculatedTipAmount = ""
    var enteredPersons = ""
    var calculatedAmountPerPerson = ""
    var imageVal = ""
    var totalAmount = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        enteredAmountOL.text! += "\(enteredAmount) Rs."
        enteredTipOL.text! += "\(enteredTip)%"
        tipAmountOL.text! += "\(calculatedTipAmount) Rs."
        enteredPersonsOL.text! += "\(enteredPersons) members"
        totalAmountOL.text! += "\(totalAmount) Rs."
        amountPerPersonOL.text! += "\(calculatedAmountPerPerson) Rs."
        imageOL.image = UIImage(named: imageVal)
        
        //animate the image
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
