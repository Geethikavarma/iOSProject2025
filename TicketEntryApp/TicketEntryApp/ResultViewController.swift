//
//  ResultViewController.swift
//  TicketEntryApp
//
//  Created by Geethika Kolukuluri on 4/4/25.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var enteredNameOL: UILabel!
    
    @IBOutlet weak var ageOL: UILabel!
    
    @IBOutlet weak var resgistrationNumberOL: UILabel!
    
    @IBOutlet weak var eventNameOL: UILabel!
    
    @IBOutlet weak var imageOL: UIImageView!
    
    var enteredName = ""
    var calculatedAge = ""
    var registrationID = ""
    var enteredeventName = ""
    var imageValue = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        enteredNameOL.text! += enteredName
        ageOL.text! += "\(calculatedAge) years"
        resgistrationNumberOL.text! += registrationID
        eventNameOL.text! += enteredeventName
        imageOL.image = UIImage(named: imageValue)
        imageOL.alpha = 0.0
        UIView.animate(withDuration: 1.5) {
            self.imageOL.alpha = 1.0
        }
        
        
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
