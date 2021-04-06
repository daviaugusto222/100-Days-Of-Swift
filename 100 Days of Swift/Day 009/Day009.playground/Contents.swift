import UIKit

//Initializers
struct User {
    var username: String
    
    init() {
        username = "Anonymous"
        print("Creaing a new user!")
    }
}
var user = User()
user.username = "hey1gus"

//Referring to the current instance
struct Person {
    var name: String
    init(name: String) {
        print("\(name) was born!")
        self.name = name
    }
}

//Lazy properties
struct FamilyTree {
    init() {
        print("Creating family tree!")
    }
}
struct PersonTwo {
    var name: String
    lazy var familyTree = FamilyTree()
    init(name: String) {
        self.name = name
    }
}
var ed = PersonTwo(name: "Ed")
ed.familyTree

//Static properties and methods
struct Student {
    static var classSize = 0
    var name: String
    init(name: String) {
        self.name = name
        Student.classSize += 1
    }
}
let taylor = Student(name: "Taylor")
print(Student.classSize)

//Access control
struct PersonTree {
    private var id: String
    init(id: String) {
        self.id = id
    }
    func identify() -> String {
        return "My social security number is \(id)"
    }
}
let gus = PersonTree(id: "q234")
print(gus.identify())
