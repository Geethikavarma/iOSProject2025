//
//  ViewController.swift
//  TableViewDemo
//
//  Created by Geethika Kolukuluri on 4/8/25.
//

import UIKit


class Product {
    var productName: String
    var productDesc: String
    
    init(productName: String, productDesc: String) {
        self.productName = productName
        self.productDesc = productDesc
    }
}//end of product class

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return the products count
        return products.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //create a cell
        let cell = tableViewOL.dequeueReusableCell(withIdentifier: "reusableCell", for: indexPath)
        //populate the cell
        cell.textLabel?.text = products[indexPath.row].productName
        
        //return the cell
        return cell
    }
    
    
    @IBOutlet var tableViewOL: UITableView!
    
    var products: [Product] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableViewOL.dataSource = self
        tableViewOL.delegate = self
        
        let product1 = Product(productName: "iPhone 16", productDesc: "This is a new iPhone 16")
        let product2 = Product(productName: "MacBook Pro", productDesc: "This is a new MacBook Pro")
        let product3 = Product(productName: "AirPods Pro", productDesc: "This is a new AirPods Pro")
        let product4 = Product(productName: "Apple Watch Series 8", productDesc: "This is a new Apple Watch Series 8")
        let product5 = Product(productName: "MacBook Air", productDesc: "This is a new MacBook Air")
        products.append(product1)
        products.append(product2)
        products.append(product3)
        products.append(product4)
        products.append(product5)

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition  = segue.identifier
        if transition == "listsSegue"{
            let destination = segue.destination as! ProductViewController
            destination.product = products[(tableViewOL.indexPathForSelectedRow?.row)!]
        }
    }
    


}

