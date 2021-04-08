import UIKit

//Creating your own classes
class Dog {
    var name: String
    var breed: String
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}
let poppy = Dog(name: "Poppy", breed: "Poodle")

//Class inheritance
class Poodle: Dog {
    init(name: String) {
        super.init(name: name, breed: "Poodle")
    }
}

//Overriding methods
class Dogy {
    func makeNoise() {
        print("AU AU!")
    }
}
class CutePoodle: Dogy {
    override func makeNoise() {
        print("auau!")
    }
}
let lady = CutePoodle()
lady.makeNoise()

//Final classes
final class Cat {
    var name: String
    var breed: String
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

//Copying objects
class Singer {
    var name = "Taylor Swift"
}
var singer = Singer()
print(singer.name)
var singerCopy = singer
singerCopy.name = "Lady Gaga"
print(singer.name)

//Deinitializers
class Person {
    var name = "John Doe"
    init() {
        print("\(name) is alive!")
    }
    func printGreeting() {
        print("Hello, I'm \(name)")
    }
    deinit {
        print("\(name) is no more!")
    }
}
for _ in 1...3 {
    let person = Person()
    person.printGreeting()
}

//Mutability
class SingerTwo {
    //change to let for stop mutability
    var name = "Lady Gaga"
}
let gaga = SingerTwo()
gaga.name = "Gagaphone"
print(gaga.name)
