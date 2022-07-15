//: [Previous](Swift_Functions)
//: # Functions

//:[Common Markups](https://commonmark.org)

import Foundation

func space(_ line: Int){ print("\n* * * * * * * * * * * * * * * * * * ##.... \(line) ...##\n")}

/*:
 ## In-Out Parameter
 also referred as __Modifiable Parameter__
Function parameters are constants by default.
Trying to change the value of a function parameter from within the body of that function results in a compile-time error.
_Uncomment below function and explore_
:*/
 //func checkParam(param :String){
//    param = "asd"
//}

//:Write an in-out parameter by placing the **inout** keyword right before a parameter’s type,
//:in order to  modify a parameter’s value, and  want those changes to persist after the function call has ended

func checkParam(param :inout String){
    param = "asd"
}

//: An example where function *`removeCharacter`* removes the desired character from the given string
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

/*:
 To  alter the original value of an argument passed to a function, we need to folow below steps
- The type of the parameter we intend to modify must be declared inout.
- Instead of passing the variable as an argument, we must pass its address.
///  This is done by preceding its name with an ampersand (&).
 :*/

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

//:__Yes, we can declare multiples variable of same nature by separating it by Comma (,)__

swapTwoInts(&firstInteger, &anotherInteger)

#warning("In-out parameters can’t have default values, and variadic parameters can’t be marked as inout.")

/*:In-out parameters aren’t the same as returning a value from a function.
The swapTwoInts example above doesn’t define a return type or return a value,
but it still modifies the values of someInteger and anotherInteger.
In-out parameters are an alternative way for a function to have an effect outside of the scope of its function body.:*/
space(#line)

///Additional silly expolarations
func checVar(var  asd :String){
    print("var is considered an argument label i.e. parameter label in this")
}

//: ## FUNCTION TYPE

//:Every function has a specific *function* type, made up of the parameter and return types of the function
//:for example:
func addTwoIntegers(_ a :Int, _ b :Int) -> Int {
    return a + b
}
print(addTwoIntegers)//check the output

//: ##Using the Function Type
var mathAddition :(Int, Int) -> Int = addTwoIntegers
print("Result for mathAddition is :::: ",mathAddition(5,7))
space(#line)

/*: ## Function as Parameter Types
We can use the Function as Parameter Type for another function.
Example:*/

func PrintMathResult(_ mathsFunction: (Int, Int) -> Int, _ a :Int, _ b :Int){
    print("PrintMathResult :::: ",mathsFunction(a, b))
}
//calling PrintMathResult
PrintMathResult(addTwoIntegers, 7, 9)
space(#line)


/*: ## Funcriona as Return Type
You can use a function type as the return type of another function.
We do this by writing a complete function type immediately after the return arrow (->) of the returning function.
Below are two functions: :*/

func stepForward(_ input :Int) -> Int {
    return input + 1
}
func stepBackward(_ input :Int) -> Int {
    return input - 1
}
//Here’s a function called chooseStepFunction(backward:), whose return type is (Int) -> Int.
//The chooseStepFunction(backward:) function returns the stepForward(_:) function
//or the stepBackward(_:) function based on a Boolean parameter called backward:
var currentValue = 0,targetValue = 0//will be used to start and  stop counter
func chooseStepsFunction(_ from :Int, to end :Int) -> (Int) -> Int {
    targetValue = end
    currentValue = from
    return from > end ? stepBackward : stepForward
}
// try passing different values and see how stepForward or stepBackward
let moveToZero = chooseStepsFunction(38, to: 9)//act as function stepBackward()

print(moveToZero)
print("Counting to \(targetValue):")
//Conting
while currentValue != targetValue {
    print("\(currentValue)... ")
    currentValue = moveToZero(currentValue)
}
print(targetValue)
space(#line)



//MARK: NESTED FUNCTION
///All of the functions you have encountered so far in this chapter have been examples of global functions,
///which are defined at a global scope.
///We can also define functions inside the bodies of other functions, known as nested functions.
var currentCount = 0, countStop = 0
func globalFunction(_ from :Int, to end :Int) -> (Int) -> Int {
    currentCount = from
    countStop = end
    let isbackward = from > end
    func nestedBackward(input :Int) -> Int { return input - 1 }
    func nestedForward(input :Int) -> Int { return input + 1 }
    return isbackward ? nestedBackward : nestedForward
}
let countToZero = globalFunction(6, to: 0)//act as function nestedBackward()

print(countToZero)
print("starting to \(currentCount) :::: \(countStop)")
//Conting
while currentCount != countStop {
    print("\(currentCount)>>")
    currentCount = countToZero(currentCount)
}
print(countStop)
space(#line)


let countTill = globalFunction(6, to: 30)//act as function nestedForward()

print(countTill)
print("starting to \(currentCount) :::: \(countStop)")
//Conting
while currentCount != countStop {
    print("\(currentCount)")
    currentCount = countTill(currentCount)
}
print(countStop)
space(#line)

#warning("Nested functions are hidden from the outside world by default, but can still be called and used by their enclosing function. An enclosing function can also return one of its nested functions to allow the nested function to be used in another scope")


//MARK: Recursion
///A function can call itself. This is called recursion, #Sounds Crazy
///if you write the function correctly, you will always have a “stopper” condition that handles the degenerate case
///and prevents the loop from being infinite:
///Example
func countDown(_ i :Int){
    print(i)
    if i > 0 {//stopper
        countDown(i - 1)
    }
}
countDown(10)
space(#line)

///check out the below function as well
func counTo(_ i :Int, _ till: Int = 0){// till has default value 0
    print(i)
    if i > till {//stopper
        counTo(i - 1) //as till is default value parameter, hence ommiting till from countTo function call will interprate it as countTo( i - 1, 0)
    }
    else if i < till {
        counTo(i + 1)
    }
    else { print("Ammmmazing !!") }
    
}
counTo(7, 3)
counTo(2, 9)
counTo(2, 2)
counTo(10) //as till is default value parameter, hence ommiting till from countTo function call will interprate it as countTo( 10, 0)

//: [Next](Swift_Function_Overloading)
