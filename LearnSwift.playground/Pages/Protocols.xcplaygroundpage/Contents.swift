//: **Protocols**
//: * Protocols can be implemented by class, structure and enumerations
//: * if a class/structure/enum confirm to protocol, protocol name to be specified after the super class name, mulitple protocols can be specified separated by comma
//: **Property requirements**
//: * get set needs to specified for protocol
//: * Protocol might require specific initializers
//: * Initializers can be a part of protocol defination
//: Note worthy ::
//: 1. In swift having default implementation for a method using extension is voilation of SOLID principle which says that no client should be forced to implement funcitionality that it does not want, it is rather good to divide the protocol in to two.
//: 2. havining default implementation to avoid code duplication why not use composition that is have separate class with the code and make that class a part of your class, inheritance vs composition
protocol SomeProtocol {
    // check that there is "no" comma separator between get and get
    var value1 : Int { get set}
    var value2 : Int { get }
}
//: **Mutating functions**
//: functions need to be marked as mutating if the the protocol will be implemented bby the structure/enumeration and that the function modifies the property of the structure/protocol
protocol Toggle {
    mutating func toggle()
}

enum ToggleSwitch : Toggle {
    case on, off
    mutating func toggle() {
        switch self {
        case .off:
            self = .on
        case .on:
            self = .off
        }
    }
}

var onoffswitch :ToggleSwitch = .off
onoffswitch.toggle()

//: **Protocols as Types** :- Protocol can be used as type, they can be used to define type of varialble or function parameter

//: **Delegation** :- Protocols can be used to implement delegation design pattern

//: **Extension** :-
//: * Protocols can be extended to provide default functionality.
//: * You can have optional methods similar to Objective-C
//: * Extension cannot contain stored property, but can contain computed property
protocol BaseProtocol {
    func printText()
}

extension BaseProtocol {
    func printText() {
        print("Base Protocol")
    }
}

class MyClass : BaseProtocol {
}
var myclass = MyClass()
myclass.printText()

//: **Conditional Protocol coformance** :-
//: Still empty ?
//:
//: Check this behaviour :- he below given thing works, two protocol but same function name
protocol some2 {
    func a()
}

protocol some1 {
    func a()
}

class someClass: some2, some1 {
    func a() {
    }
}
