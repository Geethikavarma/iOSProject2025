//
//  MovieCollectionViewCell.swift
//  CollectionViewMovies
//
//  Created by Geethika Kolukuluri on 4/10/25.
//

import UIKit

class MovieCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageOL: UIImageView!
    
    func assignMovie(with movie: Movie) {
        imageOL.image = movie.image
    }
}
