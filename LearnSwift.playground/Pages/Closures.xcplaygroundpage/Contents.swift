//: **Closures**
//: *Self contained block of functionality that can be passed around, similar to block in Objective-C
//: *Memory Management :: weakSelf, unownedSelf

/*
{ (parameters) -> returnType in
    closureBody
}
*/
let names = ["Rakesh", "James", "Patole"]
var sortedNames = names.sorted { (s1:String, s2:String) -> Bool in
    return s1 > s2
}
//: Infering type from context,  type of paramter and return type need not to be define it can be infered
sortedNames = names.sorted(by: { (s1, s2) in
    return s1 < s2
})
//: Implicit return from closure , works only with single expression closure , that is the closure body should have single statement
sortedNames = names.sorted { (s1, s2) in s1 < s2 }
//: Short hand arguments, no need to declare paramters they can be straightaway refered by $0, $1 so on based on the parameter position
sortedNames = names.sorted{ $0 < $1 }
//: Operator Method simply pass the metho
sortedNames = names.sorted(by: > )
//: Trailing closure, since closure is the last param here it can be simply written after the function paramters out side of the ()
sortedNames = names.sorted{ $0 < $1 }
//: *Intresting* example of closure capturing surrounding value
//: * this example is surely hard to grasp.. in the exapmle below runningAmount and incrementAmount are not a part to increment function since they are refered by the increment function the are captured by reference
func makeIncrement(by incrementAmount:Int) -> ()-> Int {
    var runningAmount = 0
    func increment() -> Int {
        runningAmount += incrementAmount
        return runningAmount
    }
    return increment
}

let increment = makeIncrement(by: 10)
increment()
increment()
increment()
//: * this has created a different set of runningAmount and incrementAmount
let increment7 = makeIncrement(by: 7)
increment7()
increment7()
//: Closures are reference type, both incrementBy10 and increment are refering to the same object
let incrementBy10 = increment
incrementBy10()
increment()
//: **Escaping closure**
//: * a closure is passed as a parmeter to the function but the closure is called after the function returns
//: * e.g. completionBlocks
//: * closures are marked with @escaping
//: * capturing self in escaping closure causes a strong reference to self
var completionHandlers = [()->Int]()
func escapingClosure(closure: @escaping ()->Int ) {
    completionHandlers.append(closure)
}

func nonEscapingClosure(closure: ()->Int ){
    closure()
}

class MyClass {
    var value = 10
    func createClosures() {
        nonEscapingClosure { () -> Int in
            value = value + 10
            return value
        }
        
        // over here capturing self
        escapingClosure { [self] () -> Int in
            value = value + 10
            return value
        }
    }
}

let myClass = MyClass()
myClass.createClosures()

completionHandlers.first?()

//: **Autoclosure**
//: below the function needs a closure as parameter but is marked as @autoclosure, hence in the function class only the staement is passed the complier automatically create a closure for the given statement
func someClosure(closure: @autoclosure ()-> String ){
    closure()
}

someClosure(closure: "Hello")
