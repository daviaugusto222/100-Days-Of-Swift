import UIKit

//For loops
let count = 1...10
for number in count {
    print("Number is \(number)")
}
let albums = ["The Fame", "Born this way", "ArtPop"]
for album in albums {
    print("\(album) in on Apple Music")
}
print("Players gonna")
for _ in 1...5 {
    print("play")
}

//While loops
var number = 1
while number <= 20 {
    print(number)
    number += 1
}

print("Ready or not, here I come!")

//Repeat loops
repeat {
    print(number)
    number += 1
} while number <= 20
print("Ready or not, here I come!")

//Exiting loops
var countDown = 10
while countDown >= 0 {
    print(countDown)
    if countDown == 4 {
        print("I'm bored")
        break
    }
    countDown -= 1
}

//Exiting multiple loops
outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print("\(i) * \(j) is \(product)")
        
        if product == 50 {
            print("It's a bullseye!")
            break outerLoop
        }
    }
}

//Skipping items
for i in 1...10 {
    if i % 2 == 1 {
        continue
    }
    print(i)
}

//Infinite loops
var counter = 0
while true {
    print(" ")
    counter += 1
    if counter == 273 {
        break
    }
}
