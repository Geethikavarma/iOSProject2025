//
//  MovieInfoViewController.swift
//  Kolukuluri_MoviesApp
//
//  Created by Geethika Kolukuluri on 4/27/25.
//

import UIKit

class MovieInfoViewController: UIViewController {

    @IBOutlet weak var movieImageViewOutlet: UIImageView!
    
    @IBOutlet weak var movieInfoOutlet: UITextView!
    
    
    @IBOutlet weak var showInfoAction: UIButton!
    
    var movie: MovieList?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = movie?.movieName
        movieImageViewOutlet.image = UIImage(named: (movie?.movieImage)!)
        movieInfoOutlet.text = ""

    }
    
    @IBAction func showInfoAction(_ sender: UIButton) {
        movieInfoOutlet.text = movie?.movieInfo
        animateImage()

    }
    
    func animateImage() {
            movieImageViewOutlet.alpha = 0
            UIView.animate(withDuration: 1.0) {
                self.movieImageViewOutlet.alpha = 1
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
