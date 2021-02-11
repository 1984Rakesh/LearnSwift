import Foundation
/*:
 **Properties**
 * Properties are values associated with class, structure and enumerations
 */
//: **Stored Properties :-**
//: * Unlike Objective-C swift does not have instance vairable, where within the code a value can be accessed using both property and instance varible.
//: * In Swift the concept of instance vairiable and properties is merged into one concept called as Properties
struct Address {
    var street : String
    let pintcode : String
}
//: **Lazy Stored Propeties :-**
struct Person {
    lazy var address : Address = Address(street: "Nagar Road", pintcode: "411006")
    var name : String
    var dob : Date
}
//: **Computed Properties :-**
//: * In below example center is a computed property since it has no backing stored value.
//: * variable declaration in set method is optional, a value can be accessed using  "newValue" variable.
struct Point {
    var x : Float
    var y : Float
}

struct Size {
    var width : Float
    var height : Float
}

struct Rect {
    var origin : Point
    var size : Size
    var center : Point {
        get {
            return Point( x: size.width / 2 + origin.x,
                          y: size.height / 2 + origin.y )
        }
        set(newValue) { // newValue here is optional, newValue can be directly accessed below without declaring one
            origin = Point(x: newValue.x - size.width / 2,
                           y:newValue.y - size.height / 2 )
        }
    }
}
//: **Readonly Property :-**
//: * in below example are is readonly propty as it has no set and get methods defined.
extension Rect{
    var area : Float {
        return size.width * size.height
    }
}
//: **Property Observer :-**
//: * vaible declartation is optional
//: * in willSet newValue can be accessed using "newValue" variable.
//: * in didSet oldValue can be accessed using "oldValue" variable.
struct Counter {
    var value : Int {
        willSet {
            print("\(newValue)")
        }
        didSet {
            print("\(oldValue)")
        }
    }
}

