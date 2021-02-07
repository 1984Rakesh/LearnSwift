//: **Enumerations**
//: * Group related values, in C it is mostly named integers
//: * Enums can have computed properties and instance methods can also have initializers to provide inital value
//: * can be extended to provide extended functionality and can confirm to protocols
enum Directions : CaseIterable{
    case North
    case South
    case East
    case West
}
// * inorder to iterate all values need to confirm to "CaseIterable"
let allValues = Directions.allCases
for value in allValues {
    print("\(value)")
}
//: **Raw Values** :- similar to c enum where we assign what value the case will hold
enum AllDirections : String, CaseIterable{
    case north = "North"
    case south = "South"
    case east = "East"
    case west = "West"
}

let newAllValues = AllDirections.allCases
for value in newAllValues {
    print("\(value.rawValue)")
}
//: **Associated Value** :- casses can have values associated with them simple will be result object
enum HTTPResult {
    case data(Any)
    case error(Int)
}

let errorCase = HTTPResult.error(1)
switch errorCase {
case .data(let data):
    print("\(data)")
    
case .error(let code):
    print("\(code)")
}

//: **Recursive enumeration** :- enumeration can contain enerations as case which is indicated by the indirect keywod
enum HTTPErrorCodes : Int {
    case notFound = 202
}

enum HTTPResults {
    case data(Any)
    indirect case error(HTTPErrorCodes)
}

let errorEnum = HTTPResults.error(HTTPErrorCodes.notFound)
switch errorEnum {
case .data(let data):
    print("\(data)")
    
case .error(let code):
    print("\(code.rawValue)")
}
