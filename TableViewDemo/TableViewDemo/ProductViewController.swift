//
//  ProductViewController.swift
//  TableViewDemo
//
//  Created by Geethika Kolukuluri on 4/8/25.
//

import UIKit

class ProductViewController: UIViewController {

    @IBOutlet weak var displayOL: UILabel!
    
    var product: Product?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        displayOL.text = "Product is \(( product?.productName)!) and its description is \(( product?.productDesc)!)"
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
