//: Interview questions
//:
//: **iOS :-**
//: 1. Application lifecycle ? didFinishLaunching, background, foreground, active, inactive, suspended
//: 2. Favourite Framework ?
//: 3. Testing ?
//: 4. 3rd party libraries/Dependency Manager/Swift Package Manager ?
//: 5. APNS and notification ? what method will be called ?
//: 6. Objective C vs Swift ?
//: 7. What is pre-main/post-main time? what happens during pre-main/post-main? how to reduce pre-main time ?
//: 8. which is faster objective c or swift w.r.t compile-time and run-time ?
//: 9. Single sign-on and UIWebView ?
//:
//: **UIKit :-**
//: 1. View lifecycle ? viewDidLoad, viewWill/DidAppear, viewWill/DidLayoutSubviews, viewDidDisappear
//: 2. Gesture Recognisers ?
//: 3. SetNeedsLayout vs LayoutIfNeeded ?
//: 4. Communication patterns between view in swift ? Delegation, Observer and notifications pro and con of both know the both
//: 5. Universal Applications ? Storyboards ? XIBS ? for different devices ?
//:
//: **CoreData :-**
//: 1. What is nullifier rule in CoreData ?
//: 2. CoreData CodeGen types ?
//: - Manual :
//: - Class :
//: - Categories :
//: 3. Passing NSManagedObject from one NSManagedObjectContext to another ?
//: - NSManagedObject from one NSManagedObjectContext is loaded into another by loading NSManagedObject with ID.
//: 4. CoreData migration from one data-model to another?
//:
//: **Networking :-**
//: 1. Different configuration available in NSURLSession ?
//:     - Default
//:     - Ephemeral
//:     - Background
//: 2. Networking ? Authorisation ?
//: 3. What is O-Auth ?
//: 4. How does single sign on work?
//: 5. What is SSL Pining ?
//: 6. What is ATS ?
//:
//: **Analytics :-**
//: 1. Fabric/Crashlytics ? logging of state before crash ?
//:
//: **Swift :-**
//: 1. Classes VS Struct ?
//:     - [Classes](StructureAndClasses) are reference types and [Struct](StructureAndClasses) is value type.
//:     - Both support functions.
//:     - Classes can inherit from another class.
//:     - Both have init method but only classes have deinit method.
//: 2. Different collection types in swift ?
//: 3. Difference between guard and if let ?
//:     - `guard [condition] else { [exit/return] }` if the condition fails the code block is executed also the code block must have return.
//:     - `if let { code block } code block` is executed if object can be unwrapped.
//: 4. What are higher order functions? give some examples?
//:     - Higher order functions are functions that take other functions as parameters or those that return other function
//:     e.g map, flatmap, reduce
//: 5. What are different access specifiers? what are their performance implications?
//:     - __open__ : classes/structs are accessible outside the give module and they can be extended.
//:     - __public__ : classes/struct are accessible outside the given module but cannot be extended.
//:     - __internal__ : this is default specifier if no other specifier is specified. classes/struct can be accessed only in given module and can be extended.
//:     - __fileprivate__ : classes/struct can be accessed only in the current file and can be extended.
//:     - __private__ : classes/struct can be accessed only in current scope.
//: 6. What is static ? what are the draw backs of static ? what is the difference between class and static ?
//:     - Both `static` and `class` attributes can applied to both properties and method.
//:     - They are associated with the class.
//:     - class methods can be overridden by subclasses.
//:     - static methods cannot be overridden by subclasses.
//: 7. What is the difference between objective-c and swift protocol/structs/enums/classes?
//:     - **Protocols**
//:         - Protocols can be extended in swift and can have default implementation.
//:         - protocols can be generic by having associated type
//:     - **struct**
//:         - methods can be a part of struct in swift.
//:         - struct can have extension.
//:     - **enum**
//:         - raw value of enum can be anything not just `int` in swift.
//:         - can have methods in swift.
//:         - can have associated values in swift.
//:         - enum can refer to another enum using the indirect keyword in swift.
//:     - **class**
//:         - class can have generics in swift
//: 8. Can you have variable declaration in extension of protocol ?
//:     - **No**, extension cannot contain stored properties be it `struct`, `class`, `enum` or `protocol`, but can have computed properties
//: 9. What are closures? explain escaping vs non escaping closures in swift ? explain with example ?
//:     - [Closures](Closures) are self contained code blocks. They are similar to blocks in C and Objective-C
//: 10. Generics explain them with explain ? swap function ?
//: 12. What are optional variable is swift? What is type of optional variables ? how would you avoid crash using optional variables ? how to unwrap optional variables?
//:     - Optional variable in swift will either hold a value or nil
//:     - Optional is an enum type `Optional<ValueType>` with two cases `.none` and `.some(value)`
//:     - `var number: Int?` is same as `var number: Optional<Int>`
//:     - optionals can be unwrapped using, forced unwrapped(`!`), nil coalescing operator(`??`), optional chaining,`if let` statement
//: 12. Enum what is difference between raw value and associated value ?
//:     - [Raw value](Enumerations) is value of `enum` e.g `case tuesday = "Tuesday"`
//:     - [Associate value](Enumerations) is for particular case where the case contains the value e.e `.loginAction(String,String)`
//: 13. Can enumerations contain enumerations as case ?
//:     - Yes, using indirect keyword and Associated value check [enumerations](Enumerations)
//: 14. Leverage Protocol Oriented Programming to OOPS ?
//: 15. Higher order functions? examples ?
//: 16. Initialisers in swift? designated vs convenience ?
//: 17. Method dispatch in swift?
//: 18. Differ method in swift?
//:
//: **Objective-C :-**
//: 1. Atomic vs Non Atomic ?
//:
//: **MRC/ARC :-**
//: 1. What are different ARC property attributes w.r.t Swift and Objective-C?
//:     - Objective-C : strong, weak, unsafe_unretained
//:     - Swift : strong, weak, unowned
//: 2. Can you have strong/weak reference types scalar types?
//:     - ARC property attributes can be applied only to reference types, i.e objects
//: 3. Can you have strong/weak reference type of String?
//:     - The answer depends on the language in swift String is a value type struct hence NO, but yes in case of Objective-C since it is a class NSString.
//: 4. Explain ARC w.r.t closures ?
//:
//: **GCD :-**
//: 1. What is Barrier in DispatchQueue ?
//: 2. Dispatch Semaphores ? wait ? signal ?
//: 3. Custom NSOperations ?
//: 4. Combine multiple async operation to form one async operation ?
//: 5. Long background tasks ?
//: 6. Quality of service w.r.t GCD ? User Interactive, User Initiated, Utility and Background? dispatch_block_create_with_qos( QOS_CLASS_*** ) get a block and perform it
//: 7. When will you use Dispatch Semaphores over Group ?
//: 8. What is the difference between Dispatch Group and Queue ?
//:
//: **XCode :-**
//: 1. Build/Run Scripts ?
//: 2. Multiple schemas? whats the purpose ?
//: 3. Dependency Manager ?
//: 4. Memory graphs ?
//: 5. Crash Logs ? Different types of crash log ?
//: 6. Race condition crash logs ? How would you resolve them ?
//: 7. Purpose of code Analyser ? Different things reported ?
//:     - Potential leaks
//:     - unused variables
//:     - nil add to array/dictionary, nil return, nil passed to calle,
//:     - incorrect release to object
//:     - value stored never used
//: 8. Swift/Objective-C Lint tools ?
//:     - SwiftLint
//:         - is an open source library used to code format validation.
//:         - it can be downloaded on a machine using brew.
//:         - to use the library one simple needs to add run script to the xcode schema and a report is generated
//:         - The library comes with a basic set of rules which is sufficient but one can add more rules to by specifying them in yml file.
//: 9. XCFrameworks vs Frameworks ?
//: 10. Static Library VS Dynamic library ?
//: 11. Explain difference between static library and framework ?
//: 12. How to include cocoapods ?
//:     - cocoapods can be added to project using pod command
//:     - pod init : will init the project, also create a pod file where you can add the pod names to add to your project
//:     - pod update : this will create a workspace with with your project and the pods xcode project will download and include all the pods mentioned in the pods project file.
//: 13. How to create cocoapods ?
//:     - pod can be create using the pod lib tool
//:     - create pod specs file similar to 
//: 14. How are things that happens when in execute pods install/init commands ?
//: 15. Swift Package manager ?
//: 16. What are Zombie Objects? What for and how are they used?
//: 17. Explain BitCode ?
//: 18. Explain App thinning ?
//:
//: **Design Patters :-**
//: 1. Explain Factory method ? difference between factory and abstract factory ?
//: 2. [Singleton](CreationalDesignPatterns) in swift ? pure singleton ? you should not be able to create another instance of that class. Sample
//: 3. Make [Singleton](CreationalDesignPatterns) thread safe ? By using dispatch queue's barrier mechanism.
//: 4. Drawbacks of [Singleton](CreationalDesignPatterns) ?
//: 5. Make singleton class thread safe ?
//: 6. Explain M-V-VM in details ?
//:     - [Model-View-ViewModel](MVVM)
//: 7. Things advised to developers when working on MVVM ? uni directional flow ? UIKit not to be accessed in View-Models ? Models not to be referred in View ?
//: 8. What logic will go where w.r.t M-V-VM ? two textfield one for username the other for password and login  button ? validation on password field ? on click of button authorisation of user with api call? what will go where with the architecture of the system? [Refer M-V-VM](MVVM)
//: 9. Explain VIPER in details ?
//: 10. What is the difference between protocol and delegate ?
//: 11. Explain Decorator design pattern ?
//: 12. Explain Adapter design pattern ?
//: 13. SOLID principles with example ?
//:     - (S)ingle responsibility :
//:     - (O)pen-Closed principle :
//:     - (L)iskov Substitution :
//:     - (I)nterface Segregation :
//:     - (D)ependency Inversion :
//: 14. MVVM router/dispatcher? not sure if it exists?
//:
//: **OOPS :-**
//: 1. What are four principles of OOPS? and explain each ?
//:     - Abstraction :
//:     - Inheritance :
//:     - Encapsulation :
//:     - Polymorphism :
//: 2. What is protocol oriented programming ?
//: 3. Does swift support protocol oriented programming ?
//:
//: **Dev Ops :-**
//: 1. Explain Git commands PULL vs FETCH, RESET vs REVERT?
//:     - FECTH check only for changes on remote, PULL check and copies changes from remote.
//: 2. Jenkins ?
//: 3. Sonar Cubes ?
//: 4. SwiftLint ?
//:
//: **Logical Questions :-**
//: 1. Monkey starts climbing tree climbs 4 meters every 1 min but slips back 2 meters the next min how much time it take to climb 15 meters pole ? my answer was 15 which is absolutely wrong, check [functions playground](Functions) for the answer it is 14 mins
//: 2. One screen multiple API to be called? what will you do if you want to download without hampering the performance?
//: 3. Client expects changes in some part of app? What design patterns you will use so that other part of the app remain untouched?
//: 4. Design a photo viewer app, explain w.r.t MVVM and any other design patterns you will use?
