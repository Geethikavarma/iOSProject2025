import UIKit

var fact = "Swift is a type safe language"
var dev = "Development of swift began in 2010"
var author = "Swift was created by Chris Lattner"

//Count the number of characters in 'fact'.
print(fact.count)

//Append the text to 'fact'
fact += ", it has a better memory management"

print(author[author.startIndex])
print(author[author.index(before: author.endIndex)])
print(dev[dev.startIndex])
print(dev[dev.index(before: dev.endIndex)])

//Create a variable.
var name = "Geethika Kolukuluri"

print(name.uppercased())
print(name[name.startIndex])
print(name[name.index(before: name.endIndex)])
print(name[name.index(name.startIndex,offsetBy: 9)])
print(name[name.index(name.endIndex,offsetBy: -12)])

//Strings02:

var shoppingList = "The shopping list contains: "
var foodItems = "Cheese, Butter, Chocolate Spread"
var clothes = "Socks, T-shirts"
print(" ")
if clothes.hasPrefix("Socks") {
    print("The first item in clothes is socks")
}else{
    print("socks is not the first item in clothes")
}
print(" ")
var ind = foodItems[foodItems.startIndex..<foodItems.index(foodItems.endIndex,offsetBy: -7)]
print(ind)
print(" ")
shoppingList += foodItems[foodItems.index(foodItems.startIndex, offsetBy:8)..<foodItems.endIndex]
print(shoppingList)

clothes.remove(at: clothes.firstIndex(of: "T")!)
clothes.remove(at: clothes.firstIndex(of: "-")!)
print("\(shoppingList) ,\(clothes)")
print(" ")
clothes.insert(contentsOf: " ,Trousers", at: clothes.endIndex)
print("\(shoppingList) ,\(clothes)")
print(" ")

var firstIndexOfR = shoppingList.index(after:shoppingList.firstIndex(of: "r")!)
print(shoppingList[..<firstIndexOfR])


var course = "44643-Mobile Computing-iOS"
//display the course number
print(" ")

print(course[course.startIndex..<course.firstIndex(of: "-")!])

//display the title of the course
print(" ")

print(course.suffix(from: course.index(after: course.firstIndex(of: "-")!)))

print(" ")
//display the first letter of the course.

var subCourse = course.suffix(from: course.index(after: course.firstIndex(of: "-")!))
print(subCourse[subCourse.startIndex])

//String04
print(" ")
let password = "Demo@123"
let confirmPassword = "Demo@123"
if password == confirmPassword {
    print("Password matches")
}else{
    print("Passwords doesn't matches")
}


print(" ")
let currentYear = "2021"
var enteredYear = "2019"
if currentYear.elementsEqual(enteredYear) == true
{
    print("Entered year matches with current year")
}
else{
    print("Entered year does not match with current year")
}

print(" ")
var vehiclePoweredBy = "Diesel"
if vehiclePoweredBy != "Electricity" {
    print("Vehicle is not eco-friendly")
}else{
    print("Vehicle is eco-friendly")
}

print(" ")
let nameGiven = "Anthony Martial"
var enteredName = "ANTHONY MARTIAL"
if nameGiven.lowercased() == enteredName.lowercased(){
    print("Entered name and given name matches with each other")
}else{
    print("Entered name does not matches with the given name")
}
