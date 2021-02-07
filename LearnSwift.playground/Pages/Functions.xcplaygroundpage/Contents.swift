//: **Functions**
//: * Functions are self contained block of code that has specific functions
//: * return statement is optional in functions
//: * paramters to functions are constants , changing them will cause an error

func name( argumentLable paramterLable:Int) -> Int {
    return paramterLable
}
var value = name(argumentLable:10)

//: * Here arugmentLable is not provided
func name( _ paramterLable:Int) -> Int {
    return paramterLable
}
value = name(10)

//: * Here arguement lable and parameterLable are same
func name( parameterLable:Int) -> Int {
    return parameterLable
}
value = name(parameterLable:10)
value = name(10) // allowed without parameter name

//: **Vardic paramters**
func printNumbers( _ numbers:Int... ){
    for number in numbers {
        print("\(number)")
    }
}
printNumbers( 1, 2, 3, 4)

//: In-out parameters
//: * note that paramters need to be passed with "&"
var a = 10, b = 20
func swap( a: inout Int, b: inout Int ) -> Void {
    let temp = a
    a = b
    b = temp
}
swap( &a, &b)
print("\(a), \(b)")

//: Function Types :: variables can be decalred with function type
//: * e.g var function = (Int) -> Int
//: * function types can be used as paramters to other functions
var v1 = 20
var v2 = 30
var function : (inout Int, inout Int) -> Void = swap
function(&v1, &v2)
print("\(v1), \(v2)")

//: **Nested functions** : functions can be declared inside functions


//: **Monkey Climbs Problem**
//: 4 meter in one mintues and down 2 meter in next 1 min, how much will it need to climb 15 meters pole
func monkeyTimeToClimbPole(poleLength:Int) {
    var metersClimbed = 0
    var currentMin = 1
    repeat {
        if( currentMin % 2 == 0 ){
            metersClimbed -= 2
        }
        else {
            metersClimbed += 4
        }
        currentMin += 1
    } while (metersClimbed < poleLength)
    print("Time Taken :: \(currentMin)")
}

monkeyTimeToClimbPole(poleLength: 15)
