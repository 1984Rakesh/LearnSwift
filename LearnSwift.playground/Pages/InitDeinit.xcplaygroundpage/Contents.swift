//: **Init**
//: * init key wod is used
//: * used to initialize stored properties of structure, classes and enumeration
//: * init foes not return value unlike Objective-C
//: * init for structure is automaticlally created by compiler with paramters based on non optional stored properties
//: * Similar to functions init can parameter and argument labels
//: * Can have mulitple initializers
class School {
    let name : String
    var yearFound : String?
    init( name schoolName:String ) {
        self.name = schoolName
    }
    
    init(_ schoolName:String, yearFound:String? ){
        self.name = schoolName
        self.yearFound = yearFound
    }
}

/*:
 **Designated Initializer:-**
 * Primary initalizer of the class, responisble for initlaization of all the properties of the class and calls appropriate super class initializer
 * Every class must atleast have one designated initializer, it can some times be satified by having one in the super class
 * Designated initializer must call it super class designated initializer
 
 **Convinience initializer:-**
 * Convinience initializer are marked by **convinience** keyword
 * Convinience initlaiizer must call designated init from same class
 * **cannot** call super class designated/convinience init method
 */
class College : School {
    var university : String
    init(_ universityName:String) {
        university = universityName
        super.init( name:universityName)
    }
    
    convenience init() {
        self.init("Deemed")
    }
}

//:
//: **Deinit**
//: * deinit keyword is used similar to init
//: * applicable only for class types
//: * called befoe object is released from memory
//: * called automatically you are not suppose to call it
class Person {
    var name : String
    init(name:String){
        self.name = name
    }
    
    deinit {
        print("\(self.name) is deallocated")
    }
}

var person : Person? = Person(name:"Rakesh")
person = nil
