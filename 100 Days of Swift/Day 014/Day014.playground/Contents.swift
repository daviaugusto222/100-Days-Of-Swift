import UIKit

//Functions
func favoriteAlbum() {
    print("My favorite is Chromatica")
}
favoriteAlbum()

func printAlbumRelease(name: String, year: Int) {
    print("\(name) was released in \(year)")
}
printAlbumRelease(name: "Fearless", year: 2008)
printAlbumRelease(name: "Speak Now", year: 2010)

func countLettersInString(_ str: String) {
    print("The string \(str) has \(str.count)")
}

countLettersInString("Hello")

func albumIsTaylor(name: String) -> Bool {
    switch name {
    case "Taylor Swift":
        return true
    case "Fearless":
        return true
    case "Red":
        return true
    default:
        return false
    }
}

if albumIsTaylor(name: "Red") {
    print("That's one of hears!")
} else {
    print("Who made that?")
}
//Enumerations
enum WeatherType {
    case sun
    case cloud
    case rain
    case wind(speed: Int)
    case snow
}

//Optionals
func getHaterStatus(weather: WeatherType) -> String? {
    switch weather {
    case .sun:
        return nil
    case .cloud:
        return "deslike"
    case .rain, .snow:
        return "hate"
    case .wind(speed: let speed):
        return "meh"
    }

}
var status = getHaterStatus(weather: .cloud)

func takeHaterAction(status: String) {
    if status == "Hate" {
        print("Hating")
    }
}

if let haterStatus = getHaterStatus(weather: .rain) {
    takeHaterAction(status: haterStatus)
}


//Structs
struct Person {
    var clothes: String
    var shoes: String
    
    func describe() {
        print("I like wearing \(clothes) with \(shoes)")
    }
}

let taylor = Person(clothes: "T-shirts", shoes: "sneakers")
print(taylor.clothes)

var taylorCopy = taylor
taylorCopy.shoes = "flip flops"

print(taylor)
print(taylorCopy)


//classes
class Singer {
    var name: String
    var age: String
    
    init(name: String, age: String) {
        self.name = name
        self.age = age
    }
    
    func sing() {
        print("LA LA DI LA")
    }
}

var taylorS  = Singer(name: "Taylor", age: "30")
taylorS.name
taylorS.age
taylorS.sing()

class CountrySiger: Singer {
    override func sing() {
        print("Trucks, guitars, and liquor")
    }
}

var taylorT = CountrySiger(name: "Taylor", age: "39")
taylorT.sing()
