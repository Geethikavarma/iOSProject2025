//
//  ViewController.swift
//  Kolukuluri_WordGuess
//
//  Created by Geethika Kolukuluri on 3/5/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var wordsGuessedLabel: UILabel!
    
    @IBOutlet weak var wordsRemainingLabel: UILabel!
    
    @IBOutlet weak var totalWordsLabel: UILabel!
    
    @IBOutlet weak var userGuessLabel: UILabel!
    
    @IBOutlet weak var guessLetterField: UITextField!
    
    @IBOutlet weak var hintLabel: UILabel!
    
    @IBOutlet weak var guessCountLabel: UILabel!
    
    @IBOutlet weak var statusLabel: UILabel!
    
    @IBOutlet weak var displayImage: UIImageView!
    
    @IBOutlet weak var playAgainButton: UIButton!
    
    @IBOutlet weak var guessLetterButton: UIButton!

    
    let words = [["Television", "Entertainment", "television"],
                 ["Computer", "Electronics", "computer"],
                 ["Book", "Literature", "book"],
                 ["Car", "Vehicle", "car"],
                 ["Dog", "Animal", "dog"]]
    
    var currentWordIndex = 0
    var currentWord = ""
    var guessedLetters = ""
    var wordsGuessed = 0
    var wordsRemaining = 5
    var totalWords = 5
    var guessCount = 0
    let maxNumOfWrongGuesses = 10

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //Start the game.
        guessLetterButton.isEnabled = false
        startNewGame()
        // Add a target to the text field to call textEntered whenever the text changes
        guessLetterField.addTarget(self, action: #selector(textEntered(_:)), for: .editingChanged)

    }
    func startNewGame() {
        currentWordIndex = 0
        wordsGuessed = 0
        wordsRemaining = 5
        guessCount = 0
        updateUI()
        loadNewWord()
    }
    
    func loadNewWord() {
        currentWord = words[currentWordIndex][0]
        hintLabel.text = "Hint: \(words[currentWordIndex][1])"
        guessedLetters = ""
        guessCount = 0
        updateUserGuessLabel()
        guessCountLabel.text = "You have Made Zero Guesses"
        statusLabel.text = "..."
        playAgainButton.isHidden = true
        displayImage.image = nil
        guessLetterField.text = ""
        guessLetterField.isEnabled = true
        guessLetterButton.isEnabled = false // Disable the button initially
    }
    
    func updateUserGuessLabel() {
        var displayWord = ""
        for letter in currentWord.uppercased() {
            if guessedLetters.contains(letter) {
                displayWord += "\(letter) "
            } else {
                displayWord += "_ "
            }
        }
        userGuessLabel.text = displayWord.trimmingCharacters(in: .whitespaces)
    }
    
    func updateUI() {
        wordsGuessedLabel.text = "Total number of words guessed successfully: \(wordsGuessed)"
        wordsRemainingLabel.text = "Total number of words remaining in game: \(wordsRemaining)"
        totalWordsLabel.text = "Total number of words in game: \(totalWords)"
    }
    @IBAction func guessLetterButtonPresses(_ sender: UIButton) {
        guard let letter = guessLetterField.text?.last else { return }
        guessLetterField.text = String(letter).uppercased()
        
        if !guessedLetters.contains(letter) {
            guessedLetters.append(letter)
            guessCount += 1
            guessCountLabel.text = "You have Made \(guessCount) Guesses"
            
            if currentWord.contains(letter) {
                statusLabel.text = "Good guess! Keep going."
            } else {
                statusLabel.text = "Wrong guess. Try again."
            }
            
            updateUserGuessLabel()
            
            if !userGuessLabel.text!.contains("_") {
                // Word guessed correctly
                wordsGuessed += 1
                wordsRemaining -= 1
                statusLabel.text = "You've guessed it correctly! '\(currentWord)' 🎉"
                if guessCount == 10{
                    guessCountLabel.text = "Wow!, You have made 10 guesses to guess the word"
                }
                
                // Display the corresponding image
                let imageName = words[currentWordIndex][2] // Access the image name from the words array
                displayImage.image = UIImage(named: imageName)
                
                playAgainButton.isHidden = false
                guessLetterField.isEnabled = false
                updateUI()
            } else if guessCount >= maxNumOfWrongGuesses {
                // Max guesses reached
                guessCountLabel.text = "You have used all the available guesses, Please play again"
                playAgainButton.isHidden = false
                guessLetterField.isEnabled = false
            }
        }
        
        // Clear the text field and disable the button after a guess
        guessLetterField.text = ""
        guessLetterButton.isEnabled = false
    }
    @IBAction func playAgainButtonPressed(_ sender: UIButton) {
        if wordsGuessed == totalWords {
            // All words guessed, reset the game
            startNewGame()
        } else {
            // Move to the next word or retry the same word
            if !userGuessLabel.text!.contains("_") {
                currentWordIndex += 1
            }
            loadNewWord()
        }
    }
    
    @IBAction func textEntered(_ sender: UITextField) {
        // Enable the Guess a Letter button only if there is text in the text field
        if let text = guessLetterField.text, !text.isEmpty {
            guessLetterButton.isEnabled = true
        } else {
            guessLetterButton.isEnabled = false
        }

    }
    
    }


