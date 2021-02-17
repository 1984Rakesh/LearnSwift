//: **Codeable**
//: * typealias of Decodable and Encodable

//:

import Foundation

struct Person : Codable, CustomDebugStringConvertible {
    let name : String
    let age : Int
    
    var debugDescription : String {
        return "{name:\(name), age:\(age)}"
    }
}

//: * in below example friend has no coding key and is not coded but compiler does not warn since it is var and optional
//: * other properties since they are let and not optional you will get a compile time error if no coding keys are provided.
class Animal : Codable, CustomDebugStringConvertible {
    let name : String
    let age : Int
    let master : Person
    var friends : [Person]?
    
    init(_ name:String, _ age:Int, _ master:Person) {
        self.name = name
        self.age = age
        self.master = master
    }
    
    var debugDescription: String {
        "{name:\(name), age:\(age), master:\(master)"
    }
}

//: Providing keys for coding, this part is optional only if you need custom keys
extension Animal {
    enum CodingKeys : String, CodingKey {
        case name = "AnimalName"
        case age = "AnimalAge"
        case master = "AnimalMaster"
    }
}

let master = Person(name:"Rakesh",age:35)

let animal = Animal("Donkey",20,master)
let encoder = JSONEncoder()
let encodedAnimal = try encoder.encode(animal)
let animalString = String(data: encodedAnimal, encoding: .utf8)
print("Encoded Animal :: \(String(describing: animalString))")

let decoder = JSONDecoder()
let decodedAnimal = try decoder.decode( Animal.self, from:encodedAnimal)
print("Decoded Animal :: \(decodedAnimal)")
