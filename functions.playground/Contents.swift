import UIKit

var greeting = "Hello, playground"

func greetUser(){
    print("Welcome User")
}
greetUser()

func sayHello() -> String{
    var name = "Swift"
    return "Hello"+name+"!"
}
print(sayHello())

func favouriteProgram(name:String) -> String{
    var name = "My Favourite Programming language is \(name)"
    return name
}
print(favouriteProgram(name: "java"))


func addNumbers(num1:Int,num2:Int)->Int{
    return num1+num2
}
print("the sum of given numbers is \(addNumbers(num1:10,num2:30))")


func manipulateNumber(input : Int , mode:Bool) ->String{
    var counter = input
    if(mode){
        counter+=2
    
    }else{
        counter -= 1
    }
    return "The \(mode ? "incremented" : "decremented") value is \(counter)"
}
var val = 19
print(manipulateNumber(input:val,mode:true))

func login(sid username:String,password:String)->Bool{
    if(username=="Swift5.5" && password=="uikit"){
        return true
    }
    return false
}
var loggedIn:Bool = login(sid:"Swift5.5",password:"uiki")
if loggedIn{
    print("User login success")
}else{
    print("username or password is incorrect")
}

func fullname(_ firstname:String,_ lastname:String) ->String{
    return lastname+","+firstname
}
print(fullname("sarah","jones"))

func sumandAvg(_ numbers:Double...)->(sum:Double,avg:Double){
    var total:Double = 0
    var avg:Double
    
    for num in numbers{
        total += num
    }
    avg = total/Double(numbers.count)
    return (total,avg)
}
let result = sumandAvg(1,20.5,5,3,4.9,10)
print("Sum = \(result.sum)")
print("Average = \(result.avg)")

func caluclate(symbol: String) -> (Int, Int) -> Int {
    func add(number1:Int,number2:Int) -> Int {
        return number1 + number2
    }
    func subtract(number1:Int,number2:Int) -> Int{
        return number1 - number2
    }
    let operation = (symbol == "+") ? add : subtract
    return operation
}
