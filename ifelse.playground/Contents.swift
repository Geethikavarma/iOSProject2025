import UIKit

var batteryLevel = 45
if batteryLevel > 80 {
    print("Battery is full with \(batteryLevel)% charge.")
}
else if (batteryLevel > 20) {
    print("Battery level is moderate at \(batteryLevel)%.")
}
else {
    print("Battery is low at \(batteryLevel)%. Please charge your device.")
}

var inputNumber = -10
if inputNumber >= 0 {
    print("\(inputNumber) is a positive number.")
}else if (inputNumber<0){
    print("\(inputNumber) is a negative number.")
    if(inputNumber%2==0){
        print("\(inputNumber) is a negative even number.")
    }
}else{
    print("The numeber is zero.")
}

var isAuthenticated = false
var userRole = "guest"
if isAuthenticated {
    if userRole == "admin" {
        print("Welcome, Admin! tou have full acess.")
    }else {
        print("Welcome, User! tou have limited acess.")
    }
}else {
    print("Please log in to continue.")
}

var appVersion = 2.1
if appVersion >= 3.0 {
    print("Your app is up to date.")
}else if appVersion>2.0{
    print("A new version is available. Please update your app.")
}else{
    print("Your app version is outdated.Update required.")
}

var password:String="stephen@171"
if password.count>=8{
    if(password.contains(" ")){
        print("Password should not contain spaces.")
    }else{
        print("Password is Strong.")
    }
}else {
    print("Password should be minimum of 8 characters.")
}
