//
//  ViewController.swift
//  Word Guess App
//
//  Created by Geethika Kolukuluri on 2/13/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayOL: UILabel!
    @IBOutlet weak var hintOL: UILabel!
    @IBOutlet weak var inputOL: UITextField!
    @IBOutlet weak var checkOL: UIButton!
    @IBOutlet weak var messageOL: UILabel!
    @IBOutlet weak var playagainOL: UIButton!
    
    var words = [["Apple", "Name of a Fruit!🤔"],
                     ["Iphone", "An Apple Product"],
                     ["Zebra", "A Striped Animal"],
                     ["MotorBike", "Two Wheeler"]]
            
    var count = 0
    var word = ""
    var lettersGuessed = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //Check button should be disabled.
        checkOL.isEnabled = false
                
        // Initialize the first word and hint
        word = words[count][0]
        hintOL.text = words[count][1]
                
        // Update the display label with underscores
        updateUnderScores()
                
        // Clear the status label initially
        messageOL.text = ""
               
    }

    
    @IBAction func checkBtnClicked(_ sender: UIButton) {
        // Get the text from the text field.
        guard let letter = inputOL.text, !letter.isEmpty
        
        else {
                    return // Exit if the input is empty
        }
                
        // Add the guessed letter to the lettersGuessed string
        lettersGuessed += letter
                
        var revealedWord = ""
        for l in word.uppercased() {
            if lettersGuessed.contains(l) {
                revealedWord += "\(l)"
            }
            else {
                revealedWord += "_ "
            }
        }
                
        // Update the display label with the revealed word
        displayOL.text = revealedWord
        inputOL.text = ""
                
        // If the word is guessed correctly, enable the play again button and disable the check button
        if !revealedWord.contains("_") {
            playagainOL.isHidden = false
            checkOL.isEnabled = false
        }
    }
    @IBAction func playAgainBtnClicked(_ sender: UIButton) {
        
        // Reset the game state for the next word
        playagainOL.isHidden = true
        lettersGuessed = ""
        inputOL.text = ""
        checkOL.isEnabled = false
                
        // Increment the count to move to the next word
        count += 1
                
        // Check if all words have been guessed
        if count >= words.count {
            messageOL.text = "Congratulations! You have completed the game!"
            displayOL.text = ""
            hintOL.text = ""
            playagainOL.isHidden = true // Hide the play again button
        }
        else {
            // Fetch the next word and hint
            word = words[count][0]
            hintOL.text = words[count][1]
                    
            // Update the display label with underscores for the new word
            displayOL.text = ""
            updateUnderScores()
        }
    }

        

    @IBAction func letterEntered(_ sender: UITextField) {
        var textEntered = inputOL.text ?? ""
               
        // Consider only the last character and trim whitespace
        textEntered = String(textEntered.last ?? " ").trimmingCharacters(in: .whitespaces)
        inputOL.text = textEntered
               
        // Enable the check button if text is entered
        checkOL.isEnabled = !textEntered.isEmpty
    }
           
    func updateUnderScores() {
        // Clear the display label before adding underscores
        displayOL.text = ""
               
        // Add underscores for each letter in the word
        for _ in word {
            displayOL.text! += "_ "
        }
    }
}

