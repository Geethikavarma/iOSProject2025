//
//  ViewController.swift
//  Emoji App
//
//  Created by Geethika Kolukuluri on 3/18/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ImageViewOL: UIImageView!
    
    @IBOutlet weak var HappyOL: UIButton!
    
    @IBOutlet weak var SadOL: UIButton!
    
    @IBOutlet weak var AngryOL: UIButton!
    
    @IBOutlet weak var ShakeMeOL: UIButton!
    
    @IBOutlet weak var ShowOL: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        
        //move the image view outside of the screenview
        ImageViewOL.frame.origin.x = view.frame.maxX
        
        //similarly move other components as well
        HappyOL.frame.origin.x = view.frame.width
        SadOL.frame.origin.x = view.frame.width
        AngryOL.frame.origin.x = view.frame.width
        ShakeMeOL.frame.origin.x = view.frame.width
        
        
    }

    @IBAction func HappyBtnClicked(_ sender: UIButton) {
        animateImage("happy")
    }
    
    @IBAction func SadBtnClicked(_ sender: UIButton) {
        animateImage("sad")
    }
    
    @IBAction func AngryBtnClicked(_ sender: UIButton) {
        animateImage("angry")
    }
    
    @IBAction func ShakeMeBtnClicked(_ sender: UIButton) {
        var w = ImageViewOL.frame.width
        w += 40
        var h = ImageViewOL.frame.height
        h += 40
        var x = ImageViewOL.frame.origin.x-20
        var y = ImageViewOL.frame.origin.y-20
        var largerFrame = CGRect(x: x, y: y, width: w, height: h)
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.4, initialSpringVelocity: 50,animations: {
            self.ImageViewOL.frame = largerFrame
        })
            
            
}
        
    
    @IBAction func ShowBtnClicked(_ sender: UIButton) {
        //at start show only thjis btn
        //when clicked get all the btns alligned in center along with image
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.4, initialSpringVelocity: 50, animations: {
            self.ImageViewOL.center.x = self.view.center.x
            self.SadOL.center.x = self.view.center.x
            self.AngryOL.center.x = self.view.center.x
            self.HappyOL.center.x = self.view.center.x
            
            
        })
        
    }
    func animateImage(_ imageName:String){
        UIView.animate(withDuration: 0.5, animations: {
            self.ImageViewOL.alpha = 0.0
        })
        UIView.animate(withDuration: 0.5, delay: 0.5, animations: {
            self.ImageViewOL.image = UIImage(named: imageName)
            self.ImageViewOL.alpha = 1.0
        })
        
    }
    
    
}

