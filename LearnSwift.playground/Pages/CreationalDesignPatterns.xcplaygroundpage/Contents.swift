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

/*:
 **Abstract Factory :-**
 * One Abstract Class called as Abstarct Factor to create **group of related objects*
 * Mutliple concreate Factories of Abstarct Factory class to create particular group of related objects
 * e.g. TIU Template, same template but look and feel was different for CWF and Scores.
 * Cons :-
    * When ever a new type of object will be created the abstarct factory will need to add method for creation of that object in turn all sub classes will have to implement that method to create that specific object. in below e.g. if add method createLable()
 */
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

//: **Factory Method :-**
//: * As the name suggest, method is abstarct, that is responsible for creation of object at run time
//: * Parent class defers creation of object to its subclass.
//: * Subclasses implement this so called factory method to create the object at runtime that is required by the parent class
//: * In short certain work is delegated to subclasses
//: * e.g. UIVIewController uses the load method to create view object, if nib is specified it load object from nib, subclasses can overrid this method to create its own instance of view.
//: * UIApplication is another class that is specified in the UIApplicationMain function, at runtime subclass of UIApplication is created that implementes different method pertaining to application 
class Document {
    func render() {
        
    }
}

class PDFDocument : Document{
    override func render() {
        print("This id PDF Document!!")
    }
}

class DocumentViewer {
    // this is factory method, parent class is unware of what document will be created.
    func newDocument() -> Document? {
        return nil
    }
    
    func renderDocument() {
        let document = self.newDocument()
        document?.render()
    }
}

class PDFDocumentViewer : DocumentViewer {
    override func newDocument() -> Document {
        return PDFDocument()
    }
}

let documentViewer = PDFDocumentViewer()
documentViewer.renderDocument()



