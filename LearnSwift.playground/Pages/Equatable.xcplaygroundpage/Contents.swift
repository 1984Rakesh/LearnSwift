//: **Equatable**
//: * It is protocol with static func == that returns boolean value
//: * Struct/Enums/Class can confirm
//: * need to implement static func == with approiate method body

struct Animal {
    let name : String
    let type : String
}

extension Animal : Equatable {
    static func == ( lhs:Animal, rhs:Animal ) -> Bool {
        lhs.type == rhs.type
    }
}

let pinky = Animal(name:"Pinky", type:"Cat")
let rinky = Animal(name:"Rinky", type:"Cat")
let chunky = Animal(name:"Chunky", type:"Dog")
pinky == rinky
pinky == chunky
chunky == rinky

struct House<T> {
    let name : String
    let thing: T
}

//: Conditional Conformance
//: Works only on generics
//: Conditional conformance means that the object will implement the protocol when the given condition is satisfied
//: Below House is equatable only if the Thing that it holds is equatable 
extension House : Equatable where T:Equatable {
    static func == (lhs:House<T>, rhs:House<T>) -> Bool {
        return lhs.thing == rhs.thing
    }
}

struct Person {
    let name:String
}

let house1 = House( name:"KN", thing:pinky)
let house2 = House( name:"VN", thing:rinky)
let house3 = House( name:"KP", thing:Person(name:"Rakesh"))
let house4 = House( name:"MP", thing:Person(name:"Atul"))

house1 == house2

//: Below line wont work since here Person class is not equatable hence house class objects cannot be check for equality
house4 == house3
