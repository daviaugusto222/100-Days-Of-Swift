import UIKit

//Properties
struct Person {
    var clothes: String
    var shoes: String
    
    func describe() {
        print("I like wearing \(clothes) with \(shoes)")
    }
}

let taylor = Person(clothes: "Blusinha", shoes: "Bota")
let other = Person(clothes: "Short skirts", shoes: "high hells")
taylor.describe()
other.describe()

//Property observers
struct Person2 {
    var clothes: String {
        willSet {
            updateUI(msg: "I'm changing from \(clothes) to \(newValue)")
        }

        didSet {
            updateUI(msg: "I just changed from \(oldValue) to \(clothes)")
        }
    }
}

func updateUI(msg: String) {
    print(msg)
}

var gaga = Person2(clothes: "T-shirts")
gaga.clothes = "short skirts"

//Computed properties
struct Person3 {
    var age: Int
    
    var ageInDogYears: Int {
        return age * 7
    }
}
var fan = Person3(age: 26)
print(fan.ageInDogYears)

//Static properties and methods

struct TaylorFan {
    static var favoriteSong = "Look What You Made Me Do"
    var name: String
    var age: Int
}
let fa = TaylorFan(name: "James", age: 25)
print(TaylorFan.favoriteSong)


//Polymorphism and typecasting
//Converting types with typecasting

class Album {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func getPerformance() -> String {
        return "The album \(name) sold lots"
    }
}

class StudioAlbum: Album {
    var studio: String
    
    init(name: String, studio: String) {
        self.studio = studio
        super.init(name: name)
    }
    
    override func getPerformance() -> String {
        return "The studio album \(name) sold lots"
    }
}

class LiveAlbum: Album {
    var location: String
    
    init(name: String, location: String) {
        self.location = location
        super.init(name: name)
    }
    
    override func getPerformance() -> String {
        return "The live album \(name) sold lots"
    }
}

var taylorSwift = StudioAlbum(name: "Taylor Swift", studio: "The Castles Studios")
var fearless = StudioAlbum(name: "Speak Now", studio: "Aimeeland Studio")
var iTunesLive = LiveAlbum(name: "iTunes Live from SoHo", location: "New York")
var allAlbums: [Album] = [taylorSwift, fearless, iTunesLive]

for album in allAlbums {
    print(album.getPerformance())
    if let studioAlbum = album as? StudioAlbum {
        print(studioAlbum.studio)
    } else if let liveAlbum = album as? LiveAlbum {
        print(liveAlbum.location)
    }
}

let number = 5
let text = String(number)
print(text)

//Closures
let vw = UIView()

UIView.animate(withDuration: 0.5) {
    vw.alpha = 0
}
