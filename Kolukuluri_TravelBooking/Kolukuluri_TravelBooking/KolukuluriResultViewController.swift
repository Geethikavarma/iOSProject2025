//
//  KolukuluriResultViewController.swift
//  Kolukuluri_TravelBooking
//
//  Created by Geethika Kolukuluri on 4/15/25.
//

import UIKit

class KolukuluriResultViewController: UIViewController {

    
    @IBOutlet weak var imageOL: UIImageView!
    
    @IBOutlet weak var travellerNameOL: UILabel!
    
    @IBOutlet weak var noOfTravellersOL: UILabel!
    
    @IBOutlet weak var cabinTypeOL: UILabel!
    
    @IBOutlet weak var totalCostOL: UILabel!
    
    @IBOutlet weak var resultOL: UILabel!
    
    var enteredName = ""
    var enterednoOfTravellers = ""
    var enteredCabinType = ""
    var calculatedTotalCost = ""
    var result = ""
    var imageName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        travellerNameOL.text! += enteredName
        noOfTravellersOL.text! += enterednoOfTravellers
        
        //make the cabin type value camel cased
        cabinTypeOL.text! += enteredCabinType
        totalCostOL.text! += calculatedTotalCost
        resultOL.text! = enteredCabinType == "" ? "Please Select a Valid Class":"Enjoy your \(enteredCabinType) Trip!"
        imageOL.image = UIImage(named: imageName )
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
