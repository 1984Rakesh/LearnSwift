// statements that change the order in which your code is execcuted
// break
// continue
// throw
// return
// fallthrough
// lable
// guard

// Continue :: used within the loops to stop execution of current loop increment and conitnue with next loop
// remember the continue statements has to be inside braces
for i in 1...10 {
    if( i % 2 == 0  ) {
        continue
    }
    print("\(i) is odd number")
}

//: break
// when used inside loop move control to line immediatels out side of the loop
// generally used in switch cases empty switch case not allowed in swift

//: Fall through 
// code below the case will be executed WITHOUT the case being matched
// NOTE :
// The fallthrough keyword does not check the case conditions for the switch case that it causes execution to fall into. The fallthrough keyword simply causes code execution to move directly to  the statements inside the next case (or default case) block, as in C’s standard switch statement behavior.

let axis = (5, 10)
switch axis {
case ( let x, let y) where y == 10:
    print("Y is 10 and X is \(x)")
    fallthrough
    
case ( let x, let y) where x == 10:
    print("X is 10 Y is \(y)")
    fallthrough
    
case ( let x, let y) where x == y :
    print(" x and y are same")
    
default:
    print("X is \(axis.0) and Y is \(axis.1)")
}

// label stament are similar to goto and can be used by break and continue to move execution control to labled statment
outterloop : for i in 1...10 {
    if i % 2 == 0 {
        continue outterloop
    }
    
    print("i is \(i)")
    for j in 1...10 {
        print("\(j)")
    }
}


// guard
// always has else statements which is execute if the given condition fails
// the else statements  should always have either return or throw
let number = 10;
func evenCheck(number:Int) {
    guard number % 2 == 0  else {
        print("not and even number")
        return
    }
    print("number is even!!")
}

