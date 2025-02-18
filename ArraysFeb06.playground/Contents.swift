import UIKit

var greeting = "Hello, playground"

//Arrays
var numbers:[Int] = [2,3,4]
print(numbers)

var emptyArray = [Int]()
print(emptyArray)

print(" ")
var programmingLanguages = ["Swift","Java","Python"]
print(programmingLanguages[0])
programmingLanguages[0]="Java Script"
print(programmingLanguages[0])

print(" ")
var names:[String] = ["Oliver", "Elijah", "James"]
print("Before appending \(names)")
names.append("Masthan")
print("After appending \(names)")
names.insert("Benjamin", at: 2)
print("After inserting \(names)")
print("Number of elements in the names : \(names.count)")
names.sort()
print("After sorting \(names)")
names.reverse()
print("After reversing \(names)")
names.remove(at: 2)
print("After removing \(names)")
names.swapAt(1, 2)
print("After swapping \(names)")

print("")
var oddNumbers = [1,3,5,7]
var evenNumbers = [2,4,6,8]
oddNumbers.append(contentsOf: evenNumbers)
print("After Combining \(oddNumbers)")
print("")

//Dictionaries
var capitals = ["Arkansas":"LittleRock","Georgia":"Atlanta"]
print(capitals)

var nums = [1:"one",2:"two",3:"three"]
print(nums)
nums[10] = "ten"
print(nums)
print("")


//keys are unique
var courses = [44542:"java",44613:"Data visualization",44560:"Advanced Database"]
print("Before changing \(courses)")
courses[44542] = "Java Script"
print("After Changing \(courses)")
print(courses[44542]!)
courses.removeValue(forKey: 44613)
print("After removing \(courses)")
print("")
print("printing keys")
for (key,values) in courses{
    print(key)
}
print("")
print("Printing Values")
for(key, values ) in courses{
    print(values)
}
print("")
print("Printing key value pairs")
for (key,values) in courses
{
    print("\(key) : \(values)")
}
print("")

//sets
var players : Set<String> = ["David Warner", "Virat Kohli","Kane Williamson", "Steve Smith"]
print(players.count)
print(players)
print(players.contains("Steve Smith"))
players.insert("Maxwell")
print(players)
players.remove("David Warner")
print(players)
print("")

var primeNumbers : Set<Int> = [2,3,5,7,11]
var numbersList : Set<Int> = [1,2,5,9]
var unionSet : Set<Int> = primeNumbers.union(numbersList)
print(unionSet)
