import UIKit

//Variables and constants
let name = "Tim McGraw"
//name = "Romeo" You don't make this, is a contant!

var name2 = "Tim McGraw"
name2 = "Tomeu"

//Types of Data
var age: Int
age = 25

var latitude: Double
latitude = 36.166667

var longitude: Float
longitude = -86.783333

longitude = -86.783333
longitude = -186.783333
longitude = -1286.783333
longitude = -12386.783333
longitude = -123486.783333
longitude = -1234586.783333

var stayOutTooLate: Bool
stayOutTooLate = true

//Operators
var a = 10
a = a + 1
a = a - 1
a = a * a

var b = 10

b += 10
b -= 10

var c = 1.1
var d = 2.2
var e = c + d

var name3 = "Tim"
var name4 = "Romeu"
var both = name3 + " and " + name4

//Comparison operators
c > 3
c >= 3
c > 4
c < 4

var name5 = "Tim Mc"
name5 == "Tim Mc"

//String Interpolation
"Your name is \(name)"

//Arrays
var evenNumbers = [2, 4, 6, 8]
var songs: [String] = ["My name don't alice", "I got marry the nigth", "1000 Doves"]
songs[0]
songs[1]
songs[2]

//Dictionaries
var person = ["first": "Lady", "middle": "Gaga"]
person["first"]
person["middle"]

//Conditional statements
var action: String
var person2 = "hater"

if person2 == "hater" {
    action = "hate"
} else if person2 == "player" {
    action = "play"
} else {
    action = "cruise"
}

var nothingInBrain = true

if stayOutTooLate && nothingInBrain {
    action = "cruise"
}

//loops
for i in 1...10 {
    print("\(i) x 10 is \(i * 10)")
}

var str = "Fakers gonna"
for _ in 1...5 {
    str += " fake"
}
print(str)

var counter = 0

while true {
    print("Counter is now \(counter)")
    counter += 1
    
    if counter == 556 {
        break
    }
}

//Switch case
let liveAlbums = 2

switch liveAlbums {
case 0:
    print("You'are just starting out")
case 1:
    print("é isso ae")
case 2:
    print("Acabou, boa sorte")
default:
    print("Have you done something new?")
}
