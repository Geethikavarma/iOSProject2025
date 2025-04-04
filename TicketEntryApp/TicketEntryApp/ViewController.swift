//
//  ViewController.swift
//  TicketEntryApp
//
//  Created by Geethika Kolukuluri on 4/3/25.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    @IBOutlet weak var nameOL: UITextField!
    
    @IBOutlet weak var dateOfBirthOL: UIDatePicker!
    
    @IBOutlet weak var eventTypeOL: UITextField!
    
    @IBOutlet weak var eventNameOL: UITextField!
    
    @IBOutlet weak var eventDateOL: UIDatePicker!
    
    @IBOutlet weak var generateBtnOL: UIButton!
    
    @IBOutlet weak var resetBtnOL: UIButton!
    
    var name = ""
    var eventType = ""
    var eventName = ""
    var dateOfBirth = Date()
    var eventDate = Date()
    var image = ""
    var age = 0
    var registrationNumber = ""
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func calculateBtnClicked(_ sender: UIButton) {
        name = nameOL.text!
        eventType = eventTypeOL.text!
        eventName = eventNameOL.text!
        dateOfBirth = dateOfBirthOL.date
        eventDate = eventDateOL.date
        
        //calculate the age based on the selected date of birth
        age = Calendar.current.dateComponents([.year], from: dateOfBirth, to: Date()).year ?? 0
        if (age <= 0) || (eventDate < Date()){
            //generate an alert saying invalid age
            let alertController = UIAlertController(title: "Invalid Age or event date", message: "Please select a valid date", preferredStyle: .alert)
            let defaultAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alertController.addAction(defaultAction)
            present(alertController, animated: true, completion: nil)
            return
            
        }
        //generate a unique id for each ticket.
        func generateAlphanumericID(length: Int) -> String {
            let characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
            return String((0..<length).compactMap { _ in characters.randomElement() })
        }

        registrationNumber = generateAlphanumericID(length: 6)
        
        if eventType.lowercased() == "music"{
            image = "music"
        }else if eventType.lowercased() == "sports"{
            image = "sport"
        }else if eventType.lowercased() == "theatre"{
            image = "theatre"
        }else if eventType.lowercased() == "tech" {
            image = "tech"
        }else{
            image = "event"
        }
        
        
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transition = segue.identifier
        if transition == "ResultSegue" {
            var destination = segue.destination as! ResultViewController
            destination.enteredName = name
            destination.calculatedAge = String(age)
            destination.enteredeventName = eventName
            destination.registrationID = registrationNumber
            destination.imageValue = image
        }
    }
    
    @IBAction func resetBtnClicked(_ sender: UIButton) {
        nameOL.text = ""
        eventTypeOL.text = ""
        eventNameOL.text = ""
        dateOfBirthOL.date = Date()
        eventDateOL.date = Date()
    }
    
    
    @IBAction func textEntered(_ sender: UITextField) {
        let nameFilled = !(nameOL.text ?? "").isEmpty
            let eventTypeFilled = !(eventTypeOL.text ?? "").isEmpty
            let eventNameFilled = !(eventNameOL.text ?? "").isEmpty
            
            let dobSelected = dateOfBirthOL.date != Date()
            let eventDateSelected = eventDateOL.date != Date()
            
            // Enable only if all are filled
            if nameFilled && eventTypeFilled && eventNameFilled && dobSelected && eventDateSelected {
                generateBtnOL.isEnabled = true
                resetBtnOL.isEnabled = true
            } else {
                generateBtnOL.isEnabled = false
                resetBtnOL.isEnabled = false
            }
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        nameOL.text = ""
        eventTypeOL.text = ""
        eventNameOL.text = ""
        dateOfBirthOL.date = Date()
        eventDateOL.date = Date()
        
        textEntered(nameOL)
        textEntered(eventNameOL)
        textEntered(eventTypeOL)
        
    }
}

