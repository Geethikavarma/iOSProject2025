//
//  MovieListViewController.swift
//  Kolukuluri_MoviesApp
//
//  Created by Geethika Kolukuluri on 4/27/25.
//

import UIKit

class MovieListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (movieListArray?.list_Array)!.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = movieListTableView.dequeueReusableCell(withIdentifier: "listCell", for: indexPath)//indexPath is 0-4 indexes of array in this case
                
                //populate the cell
                let movie = (movieListArray?.list_Array)![indexPath.row]
                cell.textLabel?.text = movie.movieName
                
                //return the cell
                return cell
    }


    @IBOutlet weak var movieListTableView: UITableView!
    
    var movieListArray: Movies?
    var moviename = ""
    var imageName = ""

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = movieListArray?.genre
        movieListTableView.delegate = self
        movieListTableView.dataSource = self
        movieListArray?.list_Array.sort { $0.movieName < $1.movieName }

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "movieInfoSegue"{
            let destination = segue.destination as! MovieInfoViewController
            destination.movie = (movieListArray?.list_Array)![(movieListTableView.indexPathForSelectedRow?.row)!]
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
