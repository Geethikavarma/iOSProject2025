//
//  ViewController.swift
//  Vowel tester App
//
//  Created by Geethika Kolukuluri on 1/28/25.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var inputOL: UITextField!
    
    @IBOutlet weak var outputOl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

   
    @IBAction func submitBtn(_ sender: UIButton) {
        //read the input Text
        //check if input tect contains vowels
        let inputText = inputOL.text!
        if(inputText.contains("a")||inputText.contains("e")||inputText.contains("i")||inputText.contains("o")||inputText.contains("u")||inputText.contains("A")||inputText.contains("E")||inputText.contains("I")||inputText.contains("O")||inputText.contains("U")){
            outputOl.text = "The word contains vowels"
        }else {
            outputOl.text = "The word does not contain vowels"
        }
    }
    
}

