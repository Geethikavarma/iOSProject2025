//
//  ViewController.swift
//  Kolukuluri_Calculator App
//
//  Created by Geethika Kolukuluri on 2/19/25.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var resultOutlet: UILabel!
    
    //variables decleration
    
    //previousNum to store the first number eneterd
    var prevNum:String = ""
    //currNum to store the second number eneterd
    var currNum:String = ""
    //operation to store the operators
    var operation:String = ""
    //isPTypingNumber to check whether the user is Typing any number or not.
    var isPTypingNumber:Bool = false
    //Stores Actual Result
    var result:Double = 0.0
    //stores formatted Result
    var res: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //by default lets set the outlet to "0".
        resultOutlet.text = "0"
        
        
        
    }

    @IBAction func buttonOne(_ sender: UIButton) {
        //append number 1
        insertNum("1")
        
    }
    @IBAction func buttontwo(_ sender: UIButton) {
        //display number 2
        insertNum("2")
    }
    @IBAction func buttonthree(_ sender: UIButton) {
        //display number 3
        insertNum("3")
    }
    @IBAction func buttonfour(_ sender: UIButton) {
        //display number 4
        insertNum("4")
    }
    @IBAction func buttonfive(_ sender: UIButton) {
        //display number 5
        insertNum("5")
    }
    @IBAction func buttonsix(_ sender: UIButton) {
        //display number 6
        insertNum("6")
    }
    @IBAction func buttonseven(_ sender: UIButton) {
        //display number 7
       insertNum("7")
    }
    @IBAction func buttoneight(_ sender: UIButton) {
        //display number 8
       insertNum("8")
    }
    @IBAction func buttonnine(_ sender: UIButton) {
        //display number 9
       insertNum("9")
    }
    @IBAction func buttonzero(_ sender: UIButton) {
        //display number 0
       insertNum("0")
    }
    
    func insertNum(_ num: String) {
        //if the user is typing number then append the number to currNum
        if isPTypingNumber {
            currNum+=num
        } else {
            //if not then  the num os assigned to currNum and typing is set to True
            currNum = num
            isPTypingNumber = true
        }
        //now assign prevNum and operator and currNum to display
        resultOutlet.text = prevNum + operation + currNum
    }
    @IBAction func buttonAC(_ sender: UIButton) {
        
    //clears all the information
        resultOutlet.text = "0"
        prevNum = ""
        currNum = ""
        operation = ""
    }
    @IBAction func buttonC(_ sender: UIButton) {
        //clears the last entered number
        //if the currNum is not empty then remove the currNum
        if !currNum.isEmpty {
            currNum.removeAll()
            resultOutlet.text = prevNum + operation + currNum
        //if operation is not empty then remove operation.
        }else if !operation.isEmpty {
            operation.removeAll()
            resultOutlet.text = prevNum
        //if previous number is not empty then remove that
        }else if !prevNum.isEmpty {
            prevNum.removeAll()
            resultOutlet.text! = "0"
        }
        
        
    }
    @IBAction func buttonsign(_ sender: UIButton) {
        //changes the sign of the number to positive or negative
        //if currNum is not empty then check the symbol at start
        if !currNum.isEmpty {
            //if the symbol is "-" then remove it
            if currNum.first == "-" {
                currNum.removeFirst()
            //if the symbol is "+" then add "-" at first
            }else {
                currNum = "-" + currNum
            }
            //now display the result as needed
            resultOutlet.text =  prevNum+operation+"("+currNum+")"
        }
        
    }
    @IBAction func buttondiv(_ sender: UIButton) {
        //set "/" Operator
        setOperation("/")
    }
    @IBAction func buttonmul(_ sender: UIButton) {
        //set "*" Operator
        setOperation("*")
    }
    @IBAction func buttonmin(_ sender: UIButton) {
        //set "-" Operator
        setOperation("-")
    }
    @IBAction func buttonadd(_ sender: UIButton) {
        //set "+" Operator
        setOperation( "+")
    }
    
    @IBAction func buttonper(_ sender: UIButton) {
        //set "%" Operator
        setOperation("%")
    }
    
    
    func setOperation(_ op: String) {
        //if currNum is not empty then check prevNum
        if !currNum.isEmpty {
            //if prevNum is Empty then assign currNum to prevNum
            if prevNum.isEmpty {
                prevNum = currNum
            //if not caluclate the result and assign that result to prevNum
            }else{
                calcRes()
                prevNum = String(res)
            }
            //set typing to false and make currNum empty and display the needed
            isPTypingNumber = false
            operation = op
            currNum = ""
            resultOutlet.text! = prevNum + op + currNum
            
        }
    }
    @IBAction func buttoneq(_ sender: UIButton) {
        //display result on press
        //if currNum is not empty then calculate the result and display the formatted result
        //make operation empty and prevNum empty
        if !currNum.isEmpty {
            calcRes()
            resultOutlet.text = format(result)
            currNum = String(result)
            prevNum = ""
            operation=""
            isPTypingNumber = false
        }}
    @IBAction func buttondot(_ sender: UIButton) {
        insertNum(".")
        
    }
    func calcRes(){
        //assign prevNum and currNum to num1 and num2
        let num1: Double = Double(prevNum)!
        let num2: Double = Double(currNum)!
        
        
        //perform operation according to the symbol
        if operation == "+" {
            result = num1 + num2
            res = format(result)
        }else if operation == "-" {
            result = num1 - num2
            res = format(result)
        }else if operation == "*" {
            result = num1 * num2
            res = format(result)
        }else if operation == "/" {
            result = num2 == 0 ? Double.nan : num1 / num2
            res = format(result)
        }else if operation == "%" {
            result = num1.truncatingRemainder(dividingBy: num2)
            res = format(result)
        }
    }
    //format the result
    //if the result is not a decimal number then display as int if it is then display as decimal rounded to two decimal points.
    func format(_ num: Double) -> String {
        if result.truncatingRemainder(dividingBy: 1) == 0 {
            return String(Int(num))
        }else{
            return String(format: "%.2f",  result)
        }
    }
    
}

