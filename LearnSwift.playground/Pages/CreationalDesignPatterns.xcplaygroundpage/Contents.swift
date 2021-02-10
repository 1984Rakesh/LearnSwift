//: **Creational Desing Patterns**
//: * All patterns here are related to how objects are created.
//:
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

//:
//: **Abstract Factory**
//: * One Abstract Class called as Abstarct Factor to create group of related objects
//: * Mutliple concreate Factories of Abstarct Factory class to create particular group of related objects
//: * e.g. TIU Teplate, same template but look and feel was different for CWF and Scores.
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

class Button {
    func printDescription() {
        print("Base Button!!")
    }
}

class iOSButton : Button{
    override func printDescription() {
        print("iOS Button")
    }
}

class MacOSButton : Button {
    override func printDescription() {
        print("MacOS Button")
    }
}
//: * Abstract Factor class that specifies the list of items to be created
protocol AbstractFactory {
    func createWindow() -> Window
    func createButton() -> Button
}
//: * Concrete classes responsible for creation of the actula objects
class iOSFactory : AbstractFactory {
    func createWindow() -> Window {
        return iOSWindow()
    }
    
    func createButton() -> Button {
        return iOSButton()
    }
}

class MacOSFactory : AbstractFactory {
    func createWindow() -> Window {
        return MacOSWindow()
    }
    
    func createButton() -> Button {
        return MacOSButton()
    }
}

var button : Button;
button = iOSFactory().createButton();
button.printDescription()

button = MacOSFactory().createButton();
button.printDescription()
