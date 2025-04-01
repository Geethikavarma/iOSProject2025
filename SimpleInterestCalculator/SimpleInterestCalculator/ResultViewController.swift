//
//  ResultViewController.swift
//  SimpleInterestCalculator
//
//  Created by Geethika Kolukuluri on 3/27/25.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var enteredPrincipalOL: UILabel!
    
    @IBOutlet weak var enteredROIOL: UILabel!
    
    @IBOutlet weak var enteredTimeOL: UILabel!
    
    @IBOutlet weak var resultOL: UILabel!
    
    @IBOutlet weak var imageOL: UIImageView!
    
    var principalVal = ""
    var roiVal = ""
    var timeVal = ""
    var resultVal = ""
    var imageVal = ""
    var cat = ""
    var interestVal = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //add animation when loading the page
       
        enteredPrincipalOL.text! += "\(principalVal) Rs."
        enteredROIOL.text! += "\(roiVal) %"
        enteredTimeOL.text! += "\(timeVal) years"
        resultVal = "Simple Interest is: \(interestVal)\rThis Shows \(cat) Interest Rates"
        resultOL.text! += resultVal
        imageOL.image = UIImage(named: imageVal)
        UIView.animate(withDuration: 0.5, animations: {
            self.imageOL.alpha = 0.0
            
        })
        UIView.animate(withDuration: 0.5,delay: 0.5, usingSpringWithDamping: 0.2, initialSpringVelocity: 0.5, animations: {
            self.imageOL.alpha = 1.0 //Fade in
            self.imageOL.image = UIImage(named: self.imageVal)

        })
        
        
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
