import UIKit

var greeting = "Hello, playground"
print(greeting)

//print Ststements with vomma seperated items
print("iOS Development",2025,"Version 17.0")

//print using string interpolation
var mobileOS = "iOS"
print("The most popular mobile operating system is \(mobileOS).")

var batteryLife = 12
print("Your device lasts \(batteryLife) hours on average, and with optimization, it could last \(batteryLife + 3) hours.")

//print statement with triple quotes
print("""
App Development
with Swift 
is Awesome!🥰
""")//prints the data inside the print statement as it is

print("Loading,\rApp Installed!")

let appName: String = "ChatGPT"
print(appName, "is your virtual assistant!")

//printing in seperate lines
print("Welcome to Swift Programming")
print("Spring 2025")
print("****************")
print("Welcome to Swift Programming", terminator : "-")
print("Spring 2025")

//print statement with special values
print("The list of numbers are ")
print(1,2,3,4,5,6)
print("The new pattern is")
print(1,2,3,4,5,6, separator: "-")

print("SupportedDevices:")
print("iPhone","iPad","Apple Watch","Mac", separator: ", ")

//VARIABLES AND CONSTANTSS
