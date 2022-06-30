//: [Previous](@previous)

import Foundation

//MARK: Function decalarion

///## Function with
///- *external name*,
///- *internal name*, and
///- return type

func addNums (fisrtNum x:Int, SecondNum y:Int) -> Int{
        
        let result = x+y
        return result
}

let getSum = addNums(fisrtNum: 2, SecondNum: 3)
print(getSum as Any)


///## Function with
///- *no external name*,
///- internal name, and
///- return type

func addNumbers (_ x:Int, _ y:Int) -> Int{
    let result = x+y
    return result
}

let getSum2 = addNumbers(4, 5)
print(getSum2 as Any)

///## Function with
///- *same external name* and *internal name*,
///- return type

func addNumbers3 (firstNum:Int, secNum:Int) -> Int{
    let result = firstNum + secNum
    return result
}

let getSum3 = addNumbers3(firstNum: 3, secNum: 4)
print(getSum3 as Any)

///## Function with
///- first parameter with *no external name*,
///- second parameter with *internal name*, and
///- third parameter with *same
///- return type

func processNums(_ x:Int,addWith y:Int, multpleBy:Int) -> Int{
    let addition = x+y
    let result = addition * multpleBy
    return result
}

let getNum4 = processNums(6, addWith: 7, multpleBy: 2)
print(getNum4 as Any)


//MARK: FUNCTION with No Param

func noParamaterFunction1() -> String{
    let greet = "Hello there"
    return greet
}

func noParamaterFunction2() -> Int{
    let getsum = addNumbers(21, 54)
    return getsum
}

print(noParamaterFunction1())
print(noParamaterFunction2() as Any)

//MARK: FUNCTION with No return type

func sayMyName(name me:String) -> Void{
    print("Hi!! Its ",me)
}

print(sayMyName(name: "Golu"))

func missYouMessage(_ to:String) -> (){
    print("\(to)!!, I miss you too much")
}

print(missYouMessage("Golu"))

func sendMessage(_ sender:String, messaged:String, to recipient:String) {
    print("Hi \(recipient), \n \(messaged) \n Regards \(sender).")
}

print(sendMessage("Ritesh", messaged: "Kya kar rahi ho", to: "Jueee"))

//: [Next](@next)
