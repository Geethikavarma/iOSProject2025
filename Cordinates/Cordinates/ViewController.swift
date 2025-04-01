//
//  ViewController.swift
//  Cordinates
//
//  Created by Geethika Kolukuluri on 3/6/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageViewOL: UIImageView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imageViewOL.image = UIImage(named: "image")
        
        
        let miny = imageViewOL.frame.minY
        let minx = imageViewOL.frame.minX
        let maxy = imageViewOL.frame.maxY
        let maxx = imageViewOL.frame.maxX
        
        //move the image to the upper left corner
        imageViewOL.frame.origin.x = 0
        imageViewOL.frame.origin.y = 0
        
        //move the image to the upper right corner
        imageViewOL.frame.origin.x = 120
        imageViewOL.frame.origin.y = 0

        //move the image to the lower left corner
        imageViewOL.frame.origin.x = 0
        imageViewOL.frame.origin.y = 725
        
        //move the image to the lower left corner
        imageViewOL.frame.origin.x = 255
        imageViewOL.frame.origin.y = 730
        
        //move the image to the center
        imageViewOL.center = view.center
        
        
        
    }


}

