//
//  ViewController.swift
//  Course Display App
//
//  Created by Geethika Kolukuluri on 2/11/25.
//

import UIKit




class ViewController: UIViewController {

    @IBOutlet weak var imageViewOL: UIImageView!
    
    @IBOutlet weak var crsNumOL: UILabel!
    
    @IBOutlet weak var crsTitkeOL: UILabel!
    
    @IBOutlet weak var semOfferedOL: UILabel!
    
    @IBOutlet weak var prevBtnOL: UIButton!
    
    @IBOutlet weak var nextBtnOL: UIButton!

    let courses =
    [["img01","44556","Network Security","Fall 2024"],
     ["img03","44667","Data Science","Fall 2025"],
     ["img02","44678","Mobile Computing","Spring 2024"],
     ["img04","45635","Cyber Security","Summer 2024"]]
    //create a variable currIndex that specifies the index of the current Element.
    var currIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //update the Course details (image,crsNum,crsTitle,semOffered) with the first element in the array
        updateCrsDetails(currIndex)
        
        //previousBtn is disabled
        prevBtnOL.isEnabled = false
        
        //nextBtn is enabled
        nextBtnOL.isEnabled = true
        
        
    }
    //create a function to update course detials
    //take index value for the function which indicates the first dimension in the course number.
    func updateCrsDetails(_ index:Int){
        imageViewOL.image = UIImage(named: courses[index][0])
        crsNumOL.text = courses[index][1]
        crsTitkeOL.text = courses[index][2]
        semOfferedOL.text = courses[index][3]
        
        prevBtnOL.isEnabled = index > 0
        nextBtnOL.isEnabled = index < (courses.count - 1)
    }

    @IBAction func prevBtnCkicked(_ sender: UIButton) {
        //update the course details(crsNum,crsTitle,semOffered,image) when action performed
        //if currIndex is grater than or equal to 1 then decrement the currIndex.
        if currIndex > 0{
            currIndex -= 1
            updateCrsDetails(currIndex)
        }
        
        
    }
    
    @IBAction func nextBtnClicked(_ sender: UIButton) {
        //update the course details(crsNum,crsTitle,semOffered,image) when action performed
        //if currIndex is less than or equal to the size of the course array then increment the currIndex.
        if currIndex < courses.count{
            currIndex += 1
            updateCrsDetails(currIndex)
        }
    }
}

