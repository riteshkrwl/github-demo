//: [Previous](@previous)

import Foundation

func space(_ line: Int){ print("\n* * * * * * * * * * * * * * * * * * ##.... \(line) ...##\n")}

// MARK: In-Out Parameter
///aslo referred as
// MARK: Modifiable Parameter
///Function parameters are constants by default.
///Trying to change the value of a function parameter from within the body of that function results in a compile-time error.
////Uncomment below function and explore
//func checkParam(param :String){
//    param = "asd"
//}

///Write an in-out parameter by placing the **inout** keyword right before a parameter’s type,
///in order to  modify a parameter’s value, and  want those changes to persist after the function call has ended

func checkParam(param :inout String){
    param = "asd"
}

/// An example where function *removeCharacter* removes the desired character from the given string
func removeCharacter(_ c:Character, from s:String) -> Int {
        var s = s //commecnt this line and check what happens
        var howMany = 0
        while let item = s.firstIndex(of:c) {
            s.remove(at:item)
            howMany += 1 }
        return howMany
    }

let someString = "Hippopotamas"
let result = removeCharacter("p", from: someString)
print(result as Any)
space(#line)

///That's great!!! but what about the orginal string, *someString*
/// it is still same,  we have removed all occurance from local veriable check below
print(someString)
space(#line)

///To  alter the original value of an argument passed to a function, we need to folow below steps
/// - The type of the parameter we intend to modify must be declared inout.
/// - Instead of passing the variable as an argument, we must pass its address.
///  This is done by preceding its name with an ampersand (&).

var StringToBeChange = "Hippopotamas"
func removeCharWithInOut(_ c:Character, from s:inout String) -> Int {
    var howMany = 0
        while let item = s.firstIndex(of:c) {
            s.remove(at:item)
            howMany += 1 }
        return howMany
    }
let result2 = removeCharWithInOut("p", from: &StringToBeChange)
print(result2 as Any)
print("StringToBeChange is < " + StringToBeChange + " > after the function execution")

#warning("Did you notice 'StringToBeChange' is decalared as var not let, why 🤔🤔🤔??? Try passing and see whats happens!! 👩‍💻 When we call the function, the variable holding the value to be modified must be declared with var, not let")
space(#line)

/// Another example where the function swapTwoInts use  swap the value of two integers with help of **inout**
func swapTwoInts(_ a: inout Int, _ b: inout Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}

var firstInteger = 26, anotherInteger = 32

///#Yes, we can declare multiples variable of same nature by separating it by Comma (,)

swapTwoInts(&firstInteger, &anotherInteger)

#warning("In-out parameters can’t have default values, and variadic parameters can’t be marked as inout.")

///In-out parameters aren’t the same as returning a value from a function.
///The swapTwoInts example above doesn’t define a return type or return a value,
///but it still modifies the values of someInteger and anotherInteger.
///In-out parameters are an alternative way for a function to have an effect outside of the scope of its function body.
space(#line)

///Additional silly expolarations
func checVar(var  asd :String){
    print("var is considered an argument label i.e. parameter label in this")
}

//MARK: Funcriona as Return Type
///You can use a function type as the return type of another function.
///We do this by writing a complete function type immediately after the return arrow (->) of the returning function.
/// Below are two functions:

func stepForward(_ input :Int) -> Int {
    return input + 1
}
func stepBackward(_ input :Int) -> Int {
    return input - 1
}
//Here’s a function called chooseStepFunction(backward:), whose return type is (Int) -> Int.
//The chooseStepFunction(backward:) function returns the stepForward(_:) function
//or the stepBackward(_:) function based on a Boolean parameter called backward:
func chooseStepsFunction(_ from :Int, to end :Int) -> (Int) -> Int {
    
    return from > end ? stepBackward : stepForward
}
var currentValue = 3

let moveToZero = chooseStepsFunction(3, to: 0)
let moveToTen = chooseStepsFunction(6, to: 10)
print(moveToZero)
print("Counting to zero:")
//Conting
while currentValue != 0 {
    print("\(currentValue)... ")
    currentValue = moveToZero(currentValue)
}

space(#line)
print("\(currentValue)!")//while loop completed

print("Counting to Ten:")
//Conting
while currentValue < 10 {
    print("\(currentValue)... ")
    currentValue = moveToTen(currentValue)
}
print("Ten!")//while loop completed
//: [Next](@next)
