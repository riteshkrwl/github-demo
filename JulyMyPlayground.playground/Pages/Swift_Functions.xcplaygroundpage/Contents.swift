//: [Previous](@previous)

import Foundation

//MARK: Function decalarion

///## Function with
///- *external name*, also called  **parameter lable**
///- *internal name*, also called **parameter name** and
///- return type
func space(_ line: Int){ print("\n* * * * * * * * * * * * * * * * * * ##.... \(line) ...##\n")}

func addNums (fisrtNum x:Int, SecondNum y:Int) -> Int{
        
        let result = x+y
        return result
}

let getSum = addNums(fisrtNum: 2, SecondNum: 3)
print(getSum as Any)

space(#line)
///## Function with
///- *no parameter label*,
///- parameter name, and
///- return type

func addNumbers (_ x:Int, _ y:Int) -> Int{
    let result = x+y
    return result
}

let getSum2 = addNumbers(4, 5)
print(getSum2 as Any)
space(#line)
///## Function with
///- *same parameter label* and *parameter name*,
///- return type

func addNumbers3 (firstNum:Int, secNum:Int) -> Int{
    let result = firstNum + secNum
    return result
}

let getSum3 = addNumbers3(firstNum: 3, secNum: 4)
print(getSum3 as Any)
space(#line)

///## Function with
///- first parameter with *no parameter label*,
///- second parameter with *parameter name*, and
///- third parameter with *same
///- return type

func processNums(_ x:Int,addWith y:Int, multpleBy:Int) -> Int{
    let addition = x+y
    let result = addition * multpleBy
    return result
}

let getNum4 = processNums(6, addWith: 7, multpleBy: 2)
print(getNum4 as Any)
space(#line)

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
space(#line)

//MARK: FUNCTION with No return type

func sayMyName(name me:String) -> Void{
    print("Hi!! Its ",me)
}

sayMyName(name: "Golu")
func missYouMessage(_ to:String) -> (){
    print("\(to)!!, I miss you too much")
}

missYouMessage("Golu")

func sendMessage(_ sender:String, messaged:String, to recipient:String) {
    print("Hi \(recipient), \n \(messaged) \n Regards \(sender).")
}

sendMessage("Ritesh", messaged: "Kya kar rahi ho", to: "Jueee")
space(#line)

//MARK: FUNCTION with No parameter and no return type

func greet1() -> Void { print("howdy one") }
func greet2() -> () { print("howdy two") }
func greet3() { print("howdy three") }

greet1()
greet2()
greet3()
space(#line)

//MARK: *FUNCTION SIGNATURE*
/// `() -> Int`
/// `() -> ()`
/// `(Int, Int) -> Void'
/// **Function Signature** is the function  the parameters type without the name/label and return type of the function
///A function’s signature is, in effect, its *type*— the type of the function.

//MARK: *FUNCATION OVERLOADING*
///This means that two functions with exactly the same name, including their  parameter lebel, can coexist as long as they have different *signatures*.

func say (_ what:String) {//function with parameter as String
    print(what)
    }
func say (_ what:Int) {//function with same name and paremeter but have different signature i.e. parameter is Int
    print(what as Any)
    }
func say (_ who:Bool){//function with same name and  parameter label but have different internal name and signature
    print (who)
}

say("Golua!!!")
say(123)
say(false)
space(#line)

///Example 2 with #same function name and  paramater label but
///different signature and  paramater name
func lolGolu(says greet: String){
    print("Golu says \(greet)!!!\n")
}

func lolGolu(says message:[String]){
    var finalMessage = "Golu wants "
    for item in message{
        finalMessage += ", \(item)"
    }
    print(finalMessage)
}
func lolGolu(want what:String){
    print("Golu want \(what) right now")
}

lolGolu(says: "Yippeee!!")
lolGolu(says: ["Apple", "Banana", "Pomegranate"])
lolGolu(want: "to Love her")
space(#line)

///Example with only ** parameter name**

func meAsk(name:String,todo:String){
    print("Jiju ask \(name) \(todo) 🤘\n")
}

func meAsk(name:String, todo:Int){
        print("Jiju says \(name) is \(todo)")
}

meAsk(name: "Jueee", todo: "not to be natkhat!!! 🙈 🙉 🙊")
meAsk(name: "Be-2", todo: 6)
space(#line)

///Examples with same Function and parameters names but return type different will not overload the function
///uncommect the blow code snipet to expole

//func whatToDo(who name:String){
//    print(name)
//}
//func whatToDo(who name:String)->String{//same function with diff return type
//    return "\(name) is confused!!! 🤦‍♂️"
//}
//whatToDo(who: "Golu")
//space(#line)

///#Overloading works for the return type as well

func say1() -> String {
      return "one"
  }
func say1() -> Int {
return 1 }

///#Uncomment the below line and observe#

//let checkFuncOverloadByReturnType =  say()

///this is because the complier is unable to determine the return type.
///hence solution to this is by defining the type

let checkFunOverloadByReturnType1 : String = say1()
print(checkFunOverloadByReturnType1)

let checkFunOverloadByReturnType2 : Int = say1()
print(checkFunOverloadByReturnType2)
space(#line)

///more example for ** function overloading on return type**

func say1(what :String)-> String{
    return "Attention please!!!  \(what)"
}

func say1(what :String)-> Int {
    let length = what.count
    return length
}

let checkFunOverloadByReturnType3 :String = say1(what: "Juee is very naughty naughty bachcha")
let checkFunOverloadByReturnType4 :Int = say1(what: "iski uski sabki lootiya doob gayi")
space(#line)

//MARK: DEFAULT PARAMETER VALUE
///A parameter can have a default value.
///This means that the caller can omit the parameter entirely supplying no argument for it
///the value will then be the default.
///To specify a default value in a function declaration, append = and the default value after the parameter type

class Dog {
    func say(_ s:String, times:Int = 1) {
        var message = s
        for _ in 1...times {
            print(message)
            message += "..." + s
        }
    }
}

///In effect, there are now two functions,
///one with a single unlabeled parameter,
///the other with an additional times: parameter.
///If you just want to say something once, you can call the say that takes a single unlabeled argument:

let d = Dog()
    d.say("woof") // same as d.say("woof", times:1)
    d.say("moo", times: 1)

///If you want repetition, call the say that takes a times: parameter: let d = Dog()

    d.say("woof", times:3)

//MARK: Variadic Parameters
///A parameter can be variadic.
///This means that the caller can supply as many argument values of this parameter’s type as desired, separated by a comma,
///the function body will receive these values as an array.
///To indicate in a function declaration that a parameter is variadic, follow it with three dots (...), like below:

func sayStrings(_ array:String ...) {
        for s in array { print(s) }
}
sayStrings("hey", "ho", "nonny nonny no")

#warning("In Swift 5.3 and before, a function can declare a maximum of one variadic parameter. Starting in Swift 5.4, that restriction has been lifted. Even two variadic parameters in a row are now legal,though you still need an external label on the second one as below")

/*func sayStrings(_ array:String ..., and array2:String ...) {
    for s in array { print(s) }
    for s in array2 { print(s) }
}*/
space(#line)


//MARK: FUNCTION with multiple ** Return Values**
/// we can use a tuple type  as the return type for a function with multiple return type as part of one compound return value

func minMax(array :[Int])->(min :Int, max:Int) {
    var currentMin = array[0]
    var currentMax = array[0]
    for item in array[1..<array.count]{
        if item < currentMin{
            currentMin = item
        }
        else if item > currentMax {
            currentMax = item
        }
    }
    return (currentMin, currentMax)
}

let bounds = minMax(array: [8, 6, 2, 4, 63, 12, 70])
print("min is \(bounds.min) and max is \(bounds.max)")
space(#line)


// MARK: Functions With an **Implicit Return**

///If the entire body of the function is a single expression, the function implicitly returns that expression.
///For example, both functions below have the same behavior:

func greetingsImp(for person:String) -> String {
    "Hello, " + person + "!!!"
}
print(greetingsImp(for: "Jueee"))

func anotherGreetingImp(for person :String) -> String {
    return "Hello, " + person + "!!!"
}
print(anotherGreetingImp(for: "Be-2 Bhai"))
space(#line)

//: [Next](@next)
