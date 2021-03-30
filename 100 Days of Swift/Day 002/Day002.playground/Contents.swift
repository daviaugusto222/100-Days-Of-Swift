import UIKit

//Arrays
let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"
let beatles = [john, paul, george, ringo]
beatles[1]

//Sets
let colors = Set(["red", "green", "blue"])
let colors2 = Set(["red", "green", "blue", "red", "green"])

//Tuples
var david = (name: "Augusto", age: 24)
david.0
david.age

//Dictionaries
let heights = ["David": 1.73]
heights["David2", default: 0]

//Creating empty collections
var teams = [String: String]()
var words = Set<String>()
var results = [Int]()

//Enumerations
enum Result {
    //associated value
    case success(with: Double)
    case failure
}
var result = Result.success(with: 90.0)

//Enum raw values
enum Planet: Int {
    case mercury = 1
    case venus
    case mars
}
let mars = Planet(rawValue: 3)
