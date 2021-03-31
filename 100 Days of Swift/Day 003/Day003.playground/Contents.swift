import UIKit

//Arithmetic operators
let firstScore = 12
let secundScore = 4
let total = firstScore + secundScore
let difference = firstScore - secundScore
let product = firstScore * secundScore
let divided = firstScore / secundScore
let remainder = 13 % secundScore

//Operator overloading
let meaningOfLife = 42
let doubleMeaning = 42 + 42
let fakers = "Fakers gonna "
let action = fakers + "fake"
let firstHalf = ["John", "Paul"]
let secondHalf = ["George", "Ringo"]
let beatles = firstHalf + secondHalf

//Compound assignment operators
var score = 95
score -= 5
var quote = "I'd rather be dry, but at least I'm "
quote += "alive"

//Comparison operators
let firstNumber = 6
let secondNumber = 4
firstNumber == secondNumber
firstNumber != secondNumber
firstNumber < secondNumber
firstNumber >= secondNumber
"david" <= "augusto"

//Conditions
let firstCard = 11
let secondCard = 10
if firstCard + secondCard == 2 {
    print("Aces - lucky!")
} else if firstCard + secondCard == 21 {
    print("Blackjack!")
} else {
    print("Regular cards")
}

//Combining conditions
let age1 = 12
let age2 = 21
if age1 > 18 && age2 > 18 {
    print("Both are over 18")
}
if age1 > 18 || age2 > 18 {
    print("At least on is over 18")
}

//The ternary operator
let numberCard1 = 11
let numberCard2 = 10
print(numberCard1 == numberCard2 ? "Card are the same" : "Cards are different")

//Switch statements
let weather = "sunny"
switch weather {
case "rain":
    print("RAIN ON ME")
    fallthrough
case "sunny":
    print("Wear sunscreen")
    fallthrough
default:
    print("Enjoy your day!")
}

//Range operators
let scoreP = 85
switch scoreP {
case 0..<50:
    print("You failed badly.")
case 50..<85:
    print("You did OK.")
default:
    print("You did great!")
}
