import UIKit

//*******Questions******//
// 1. In which year was the first version of the Swift programming language introduced?
// Explain why Swift is considered a modern and user-friendly programming language.
// Also, describe type safety and type inference in Swift with examples.
print("Swift programming language was introduced in 2014.")
print("Swift is a contemporary, easy-to-use language that makes it simple to read, create, and debug code thanks to its clear syntax, powerful type inference, and automatic memory management. Compared to previous languages like Objective-C, its expressive features and emphasis on safety aid to lower errors.")
print("Type safety in swift: \r swift ensures that variables and expressions cannot be assigned values of incompatible types, preventing runtime errors and improving code reliability.\r Example:\r let age: Int = 30 //Declares a variable 'age' of type integer\r //age = 'Thirty' //This would result in a compiler error because you cannot assign a String to an integer\r\rType inference in swift: \r Swift automatically infers the type of variables and expressions based on the context in which they are used, reducing the need for explicit type annotations, making the code more readable and maintainable.\r Example:\rlet name = 'John'//The compiler infers that 'name' is a String type\rvar number = 42 //The compiler infers that 'number' is an Int type")
print("----------------------")
// End of question 1


// 2. Declare a constant 'pi' of type Double with the value 3.14. Write code to calculate
// the area of a circle with a radius of 10.0 units using the formula: Area = pi * radius * radius.
// Print the calculated area as shown in the sample output below:
// "The area of the circle with radius 10.0 is **** square units."
let pi:Double = 3.14
let radius:Double = 10.0
let area:Double = pi * radius * radius
print("The area of the circle with radius \(radius) is \(area) square units.")
print("----------------------")
// End of question 2


// 3. Declare a variable with a value of 212°F (boiling point of water) in Fahrenheit, convert it to Celsius,
// and round it to one decimal place. Print the result in this format:
// "Temperature: 212°F is equivalent to ****°C."
let tempF:Int = 212
let tempC:Double = (Double(tempF) - 32.0) * 5.0 / 9.0
let roundedValue:Double = round(10 * tempC) / 10
print("Temperature: \(tempF)°F is equivalent to \(roundedValue)°C.")
print("----------------------")
// End of question 3


// 4. Write three statements about why Swift is a great language for beginners and developers.
// Display the first two statements on one line and the third statement on the next line using print statements.
print("Swift has a clean and readable syntax, making it easy for beginners to understand.",terminator: "")
print("It offers strong typing and automatic memory management, reducing the chances of errors.")
print("Swift has a large, active community and excellent documentation, making it easy to find help and resources.")
print("----------------------")
// End of question 4


// 5. Display the following using a single print statement:
// "Swift is an intuitive, powerful, and safe programming language designed for iOS and other Apple platforms.
// It offers modern features, concise syntax, and exceptional performance that developers love."
print("""
    Swift is an intuitive, powerful,and safe 
    programming language designed for iOS and 
    other Apple platforms.It offers modern 
    features, concise syntax, and exceptional 
    performance that developers love.
    """)
print("----------------------")
// End of question 5


// 6. Declare two variables, num1 and num2, and assign them any two 3-digit numbers.
// Write code to calculate their product and determine how many digits the product contains.
// Print the result in this format:
// "The product of <num1> and <num2> is ****, and it has **** digits."
var num1: Int = 234
var num2: Int = 567
var prod: Int = num1 * num2
let numDigits: Int = String(prod).count
print("The product of \(num1) and \(num2) is \(prod), and it has \(numDigits) digits.")
print("----------------------")
// End of question 6


// 7. Create a variable with the value "Swift programming is fun!".
// Count the total number of characters excluding spaces and print them as individual characters separated by "+".
// For example: "S+w+i+f+t+p+r+o+g+r+a+m+m+i+n+g+i+s+f+u+n"
let line = "Swift programming is fun! "
var result = line.count
var res = line.filter{!$0.isWhitespace}
res.removeLast()
print("The number of characters excluding spaces in the above text is 26 The modified text is :")
let resArray = Array(res)  // Convert the string to an array of characters

for i in 0..<resArray.count {
    if i == resArray.count - 1 {
        print(resArray[i])  // No "+" for the last character
    } else {
        print(resArray[i], terminator: "+")
    }
}

print("----------------------")
// End of question 7


// 8. A car is traveling at a constant velocity of 20 m/s for 12 seconds.
//Calculate the total distance traveled during this time period using the formula:
//Distance = velocity × time
//Print the result in this format:
//"The car traveled a distance of **** meters."
let vel:Int = 20
let tm:Int = 12
var dist:Int = vel * tm
print("The car travelled a distance of \(dist) meters.")

print("----------------------")
// End of question 8





