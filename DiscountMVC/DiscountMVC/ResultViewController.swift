//
//  ResultViewController.swift
//  DiscountMVC
//
//  Created by Geethika Kolukuluri on 3/20/25.
//

import UIKit

class ResultViewController: UIViewController {
    
    var amount = ""
    var discount = ""
    var finalAmount = ""
    
    @IBOutlet weak var EnteredAmountOL: UILabel!
    
    @IBOutlet weak var EnteredDiscRateOL: UILabel!
    
    @IBOutlet weak var FinalAmountOL: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        EnteredAmountOL.text! += "  Rs. \(amount)"
        EnteredDiscRateOL.text! += "  \(discount)"
        FinalAmountOL.text! += "  Rs. \(finalAmount)"
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
