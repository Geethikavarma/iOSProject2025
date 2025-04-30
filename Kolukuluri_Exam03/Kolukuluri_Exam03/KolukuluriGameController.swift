//
//  KolukuluriGameController.swift
//  Kolukuluri_Exam03
//
//  Created by Geethika Kolukuluri on 4/22/25.
//

import UIKit

class KolukuluriGameController: UIViewController {

    @IBOutlet weak var imageViewOL: UIImageView!
    
    @IBOutlet weak var nameOL: UILabel!
    
    
    @IBOutlet weak var descriptionOL: UITextView!
    var game: Game!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        imageViewOL.image =  game.imageName
        nameOL.text = game.name
        descriptionOL.text = game.information
        
        UIView.animate(withDuration: 0.6,
                       delay: 0.2,
                       usingSpringWithDamping: 0.4,
                       initialSpringVelocity: 0.5,
                       options: .curveEaseInOut,
                       animations: {
            self.imageViewOL.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
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
