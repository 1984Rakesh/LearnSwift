//: **Singletone** :-
//:
class SomeClass {
    static let manager : SomeClass = SomeClass()
    
    func printDescription() {
        print("Hello!!")
    }
}

SomeClass.manager.printDescription()
