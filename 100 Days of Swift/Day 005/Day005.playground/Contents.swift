import UIKit

//Writing functions
func printHelp() {
    let message = """
    Run this
    NOW!
    """
    print(message)
}
printHelp()

//Accepting parameters
func square(number: Int) {
    print(number * number)
}
square(number: 9)

//Returning values
func square(num: Int) -> Int {
    return num * num
}
let result = square(num: 8)
print(result)

//Parameter labels
func sayHello(to name: String) {
    print("Say hello to \(name)")
}
sayHello(to: "David")

//Omitting parameter labels
func greet(_ name: String) {
    print("Hello, \(name)")
}
greet("Augusto")

//Default parameters
func greet(_ person: String, nicely: Bool = true) {
    if nicely {
        print("hi, \(person)")
    } else {
        print("On ho, it's \(person)")
    }
    
    
}
greet("David", nicely: false)

//Variadic functions
func square(numbers: Int...) {
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}
square(numbers: 1,3,4)

//Writing throwing functions
enum PasswordError: Error {
    case obvius
}
func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvius
    }
    return true
}

//Running throwing functions
do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}

//inout parameters
func doubleInPlace(number: inout Int) {
    number *= 2
}
var myNum = 10
doubleInPlace(number: &myNum)
