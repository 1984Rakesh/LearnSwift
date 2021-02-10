//: **Singletone** :-
//: * Only one instance of the class is created thorught the application life cyle
//: * let someClass = SomeClass() wont work since init is private
//: * Hence only one instance of the class can be created
//: * Making the init method optional will also make the manager property optional.Which will not work since we want only one instance of class
class SomeClass {
    static let manager : SomeClass = SomeClass()
    
    private init(){
    }
    
    func printDescription() {
        print("Hello!!")
    }
}

SomeClass.manager.printDescription()

//: **Abstract Factory**
//: * One Abstract Class called as Abstarct Factor to create group of related objects
//: * Mutliple concreate Factories of Abstarct Factory class to create particular group of related objects
class Window {
    func printDescription() {
        print("Base Window!!")
    }
}

class iOSWindow : Window{
    override func printDescription() {
        print("iOS Window")
    }
}

class MacOSWindow : Window {
    override func printDescription() {
        print("MacOS Window")
    }
}
//: * Abstract Factor class that specifies the list of items to be created
protocol AbstractFactory {
    func createWindow() -> Window
}

class iOSFactory : AbstractFactory {
    func createWindow() -> Window {
        return iOSWindow()
    }
}

class MacOSFactory : AbstractFactory {
    func createWindow() -> Window {
        return MacOSWindow()
    }
}
