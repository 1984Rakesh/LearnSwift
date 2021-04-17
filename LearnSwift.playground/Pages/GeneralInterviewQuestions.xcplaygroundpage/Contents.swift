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
//: 8. Networking ? Authorisation ?
//: 9. APNS and notification what method will be called ?
//: 10. Quality of service w.r.t GCD ?
//: 11. Static Library VS Dynamic library ?
//: 12. Custom NSOperations ?
//: 13. Combine multiple async operation to form one async operation ?
//: 14. Long background tasks ?
//: 15. Passing NSManagedObject from one NSManagedObjectContext to another ?
//: 16. CoreData migration from one data-model to another?
//: 17. Universal Applications ? Storyboards ? XIBS ? for different devices ?
//: 18. Fabric/Crashlytics ? logging of state before crash ?
//:
//: **Swift :-**
//: 1. Classes VS Struct ? Reference type vs value type ? when to use what ?
//: 2. Different collection types in swift ?
//: 3. Difference between guard and if let ?
//: 4. Filter, Map, Reduce function ? these are higher order functions as well ? explain with example ?
//: 5. Open vs public explain more in details, access specifiers ?
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
//:
//: **Objective-C :-**
//:
//: **Design Patters :-**
//: 1. Explain Factory method ? difference between factory and abstract factory ?
//: 2. [Singleton](CreationalDesignPatterns) in swift ? pure singleton ? you should not be able to create another instance of that class. Sample
//: 3. Drawbacks of [Singleton](CreationalDesignPatterns) ?
//: 4. explain M-V-VM in details ?
//: 5. Things advised to developers when working on MVVM ? uni directional flow ? UIKit not to be accessed in View-Models ? Models not to be referred in View ?
//: 5. explain VIPER in details ?
//: 6. What logic will go where w.r.t M-V-VM ? two textfield one for username the other for password and on button ? validation on password field ? on click of button authorisation of user with api call? what will go where with the architecture of the system? [Refer M-V-VM](MVVM)
//:
//: **OOPS :-**
//: 1. what are four principles of OOPS? and explain each ?
//: 2. What is protocol oriented programming ?
//: 3. Does swift support protocol oriented programming ?
//:
//: **Dev Ops :-**
//: 1. Git PULL vs FETCH ? FECTH check only for changes on remote, PULL check and copies changes from remote
//:
//: **Logical Questions :-**
//: 1. Monkey starts climbing tree climbs 4 meters every 1 min but slips back 2 meters the next min how much time it take to climb 15 meters pole ? my answer was 15 which is absolutely wrong, check [functions playground](Functions) for the answer it is 14 mins
