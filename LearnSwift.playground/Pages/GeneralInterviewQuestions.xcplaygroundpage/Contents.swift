//: Interview questions
//:
//: **iOS :-**
//: 1. Communication patterns between view in swift ? Delegation, Observer and notifications pro and con of both know the both
//: 2. View lifecycle ? viewDidLoad, viewWill/DidAppear, viewWill/DidLayoutSubviews, viewDidDisappear
//: 3. Application lifecycle ? didFinishLaunching, background, foreground, active, inactive, suspended
//: 4. Favourite Framework ?
//: 5. Testing ?
//: 6. 3rd party libraries/Dependency Manager/Swift Package Manager ?
//: 7. Gesture Recognisers ?
//: 8. SetNeedsLayout vs LayoutIfNeeded ?
//: 9. Networking ? Authorisation ?
//: 10. APNS and notification ? what method will be called ?
//: 11. Static Library VS Dynamic library ?
//: 12. Passing NSManagedObject from one NSManagedObjectContext to another ?
//: 13. CoreData migration from one data-model to another?
//: 14. Universal Applications ? Storyboards ? XIBS ? for different devices ?
//: 15. Fabric/Crashlytics ? logging of state before crash ?
//: 16. Objective C vs Swift ?
//: 17. CoreData CodeGen types ? Manual, Class, Categories ?
//: 18. MVVM router/dispatcher? not sure if it exists?
//:
//: **Swift :-**
//: 1. Classes VS Struct ? Reference type vs value type ? when to use what ?
//: 2. Different collection types in swift ?
//: 3. Difference between guard and if let ?
//: 4. Filter, Map, Reduce, flatmap function ? these are higher order functions as well ? explain with example ?
//: 5. Open vs public explain more in details, access specifiers ? Performance Impact? look at dynamic method dispatch...
//: 6. what is static ? what are the draw backs of static ? what is the difference between class and static ?
//: 7. what is the difference between objective-c and swift protocol/structs/enums/classes?
//: 8. Can you have variable declaration in extension of protocol ? No, extension cannot contain stored properties be it struct, class, enum or protocol, but can have computed properties
//: 9. escaping vs non escaping closures in swift ? explain with example ?
//: 10. Generics explain them with explain ? swap function ?
//: 11. What are optional variable is swift how would you avoid crash using optional variables ?
//: 12. Enum what is difference between raw value and associated value ?
//: 13. Swift Package manager ?
//: 14. Can enumerations contain enumerations as case ? Yes, using indirect keyword and Associated value check [enumerations](Enumerations)
//: 15. Leverage Protocol Oriented Programming to OOPS ?
//: 16. What is the type of optional?
//: 17. Higher order functions? examples ?
//: 18. Initialisers in swift? designated vs convenience ?
//: 19. Method dispatch in swift?
//: 20. Differ method in swift?
//:
//: **Objective-C :-**
//: 1. Atomic vs Non Atomic ?
//:
//: **GCD :-**
//: 1. What is Barrier in DispatchQueue ?
//: 2. Dispatch Semaphores ? wait ? signal ?
//: 3. Custom NSOperations ?
//: 4. Combine multiple async operation to form one async operation ?
//: 5. Long background tasks ?
//: 6. Quality of service w.r.t GCD ? User Interactive, User Initiated, Utility and Background? dispatch_block_create_with_qos( QOS_CLASS_*** ) get a block and perform it
//:
//: **XCode :-**
//: 1. Build/Run Scripts ?
//: 2. Multiple schemas? whats the purpose ?
//: 3. Dependency Manager ?
//: 4. Memory graphs ?
//: 5. Crash Logs ?
//: 6. Race condition crash logs ? How would you resolve them ?
//: 7. Purpose of code Analyser ? Different things reported by it ?
//: 8. Swift/Objective-C Lint tools ?
//: 9. XCFrameworks vs Frameworks ?
//:
//: **Design Patters :-**
//: 1. Explain Factory method ? difference between factory and abstract factory ?
//: 2. [Singleton](CreationalDesignPatterns) in swift ? pure singleton ? you should not be able to create another instance of that class. Sample
//: 3. Make [Singleton](CreationalDesignPatterns) thread safe ? By using dispatch queue's barrier mechanism.
//: 4. Drawbacks of [Singleton](CreationalDesignPatterns) ?
//: 5. explain M-V-VM in details ?
//: 6. Things advised to developers when working on MVVM ? uni directional flow ? UIKit not to be accessed in View-Models ? Models not to be referred in View ?
//: 7. explain VIPER in details ?
//: 8. What logic will go where w.r.t M-V-VM ? two textfield one for username the other for password and on button ? validation on password field ? on click of button authorisation of user with api call? what will go where with the architecture of the system? [Refer M-V-VM](MVVM)
//: 9. What is the difference between protocol and delegate ?
//: 10. Decorator Design Pattern ?
//: 11. SOLID principles with example ?
//:
//: **OOPS :-**
//: 1. what are four principles of OOPS? and explain each ?
//: 2. What is protocol oriented programming ?
//: 3. Does swift support protocol oriented programming ?
//:
//: **Dev Ops :-**
//: 1. Git PULL vs FETCH ? FECTH check only for changes on remote, PULL check and copies changes from remote
//: 2. What is the difference between Reset and Revert?
//: 3. Jenkins Sonar Cubes?
//:
//: **Logical Questions :-**
//: 1. Monkey starts climbing tree climbs 4 meters every 1 min but slips back 2 meters the next min how much time it take to climb 15 meters pole ? my answer was 15 which is absolutely wrong, check [functions playground](Functions) for the answer it is 14 mins
//: 2. One screen multiple API to be called? what will you do if you want to download without hampering the performance?
