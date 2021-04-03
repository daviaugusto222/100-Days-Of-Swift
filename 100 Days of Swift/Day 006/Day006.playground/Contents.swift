import UIKit

//Creating basic closure
let driving = {
    print("I'm driving in my car")
}
driving()

//Accepting parameters in a closure
let drivingCar = { (place: String) in
    //the in keyword is there to mark the end of the parameter list
    print("I'm going to \(place) in my car")
}
//don’t use parameter labels when running closures
drivingCar("London")

//Returning values from a closure
let drivingWithReturn = { (place: String) -> String in
    return "I'm goint to \(place)"
}
let messege = drivingWithReturn("London")
print(messege)

//Closures as parameters
func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}
travel(action: driving)

//Trailing closuse syntax
//Because its last parameter is a closure,
//we can call travel() using trailing closure syntax like this:
travel {
    print("I'm driving")
}
