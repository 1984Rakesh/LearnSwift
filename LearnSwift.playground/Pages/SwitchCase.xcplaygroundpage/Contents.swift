//: [Previous](@previous)

//Notes ::
// Default is compulsory in swift fall through
// No break needed
// multiple values can be matched using comma calles as compound cases
// can match patterns i.e alphanumeric, intervals(range operators), value bindings, tuples.
// cases can have where clause
// empty cases are not allowed in swift and hence break can be used

import Foundation

let value = "a"
switch value {
case "a":
    print("Value is a")
    
case "b":
    print("value is b")
    
default:
    print("Note sure what is value")
}

//: Interval matching
let number = 10
switch number {
case 0:
    print("number is zero")
    
case 1..<5:
    print("number is less than 5")
    
case 5...10:
    print("number is in between 5 and 10")
    
default:
    print("Number is \(number)")
}

//: Value binding and tuple matching with where clause
let axis = (5, 5)
switch axis {
case ( let x, 10):
    print("Y is 10 and X is \(x)")
    
case ( 10, let y):
    print("X is 10 Y is \(y)")
    
case ( let x, let y) where x == y :
    print(" x and y are \(x)")
    
default:
    print("X is \(axis.0) and Y is \(axis.1)")
}

//Compound cases
let alphabet = "a"
switch alphabet {
case "a", "e", "i", "o", "u":
    print("is vowel")
default:
    print("is \(alphabet)")
}
