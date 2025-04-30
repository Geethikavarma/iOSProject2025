//
//  BookingViewController.swift
//  Kolukuluri_TravelBooking
//
//  Created by Geethika Kolukuluri on 4/15/25.
//

import UIKit

class BookingViewController: UIViewController {

    @IBOutlet weak var travellerNameOL: UITextField!
    
    @IBOutlet weak var noOfTravellersOL: UITextField!
    
    @IBOutlet weak var cabinTypeOL: UITextField!
    
    var travellerName = ""
    var noOfTravellers = 0
    var cabinType = ""
    var totalCost = 0
    var image = ""
    var result = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func bookNowButtonOL(_ sender: UIButton) {
        
        noOfTravellers = Int(noOfTravellersOL.text!)!
        cabinType = cabinTypeOL.text!
        travellerName = travellerNameOL.text!
        
        if cabinType.uppercased() == "ECONOMY" {
            totalCost = noOfTravellers * 150
            image = "economy"
        }else if cabinType.uppercased() == "LUXURY" {
            totalCost = noOfTravellers * 250
            image = "luxury"
        }else{
            image = "invalid"
            cabinType = ""
            totalCost = 0
        }
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transition = segue.identifier
        if transition == "resultSegue" {
            var destination = segue.destination as! KolukuluriResultViewController
            destination.enteredCabinType = cabinType.prefix(1).uppercased() + cabinType.dropFirst().lowercased()
            destination.calculatedTotalCost = totalCost > 0 ? String(totalCost) : ""
            destination.enteredName = travellerName
            destination.enterednoOfTravellers = String(noOfTravellers)
            destination.imageName = image
        }
    }
    
    

}
