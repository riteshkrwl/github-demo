//: [Previous](@previous)

import Foundation

//MARK: CLOSURE

///Closures are self-contained blocks of functionality that can be passed around and used in your code.
///Closures in Swift are similar to blocks in C and Objective-C and to lambdas in other programming languages.
///Closure expression syntax has the following general form:

//{ (parameters) -> return type in
//    statements
//}

///
let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}
var reversedNames = names.sorted(by: backward)

///The example below shows a closure expression version of the backward(_:_:) function from above:

reversedNames = names.sorted(by: { (s1: String, s2: String) -> Bool in
    return s1 > s2
})


///#Inferring Type From Context
reversedNames = names.sorted(by: { s1, s2 in s1>s2 } )

var adding = {(n1,n2) -> Int in return n1+n2}

let getAddition =  adding(2,3)

///#Shorthand Argument names
///Swift automatically provides shorthand argument names to inline closures,
///which can be used to refer to the values of the closure’s arguments by the names $0, $1, $2, and so on.
let checkReverse = names.sorted(by: { $0 > $1 } )


///Closure Setting a Captured Variable

func pass100 (_ f:(Int) -> ()) {
        f(100)
}
var x = 0
print(x) // ?
func setX(newX:Int) {x = newX }
pass100(setX)
print(x) // ?

///Example 2

var greet = {
  print("Hello, World!")
}
// call the closure
greet()

///#Closure Parameters#
///Similar to functions, a closure can also accept parameters. For example,
// closure that accepts one parameter
//below closure takes one paramater Name (Sting), No retuen type,
let greetUser = { (name: String)  in
    //closure body
    print("Hey there, \(name).")
}

// closure call
greetUser("Delilah")

///**Note**
///-  Unlike function, we call the closure without mentioning the parameter name.
/// as in the balove expamplet we have not mentione 'name' while calling greetUser closure.

///#Closure That Returns Value
///A Swift closure may or may not return a value. If we want our closure to return some value,
///we need to mention it's return type and use the return statement. For example,

//Closure definition
var findSquare = {(num: Int) -> (Int) in
    let square = num * num
    return square
}
//closure call
let result = findSquare(3)
print(result)


///#Closures as Function Parameter
///In Swift, we can create a function that accepts closure as its parameter.

//define function with funcation (search) as its parameter
func grabLunch(search:()-> ()){
    //grablunch function body
    print("What is happening in the world???")
    //clasure call
    search()
}

//function call
grabLunch {
    print("Gorgious Golu made RidgeGuard's peel chutney, Yipee!!! \n")
}


///#TRAILING CLOSURE#
///In trailing closure, if a function accepts a closure as its last parameter,

//Defining a function which has a trailing closure(search)
func getMeLunch(message: String, search: ()->()){
    print(message)
    //closure call
    search()
}
//use of trailing closure
getMeLunch(message: "Gigli Golu bhook lagi!!"){
    print("Khalo beta Mungfali 🍛 \n")

}

getMeLunch(message: "Jueee!! Jueeee!!, bhook lagi", search: {print("Khalo Jiju boroKali 🥗\n")})

///#Autoclosure
///While calling a function, we can also pass the closure without using the braces {}.
///For example,
//using {}
func display(greet: ()->()){
    greet()
}
display {
    print("Shreemati Soni Devi 🙋‍♀️, meri Juee ko pareshan mat karo 🤷‍♂️")
}
//To pass the closure argument without using braces,
//we must use the @autoclosure keyword in function definition. For example,
func display(greet: @autoclosure () -> ()) {
    greet()
        }
display {
    print("Ok Jiju, mai ab Jueee ko pareshan nahi karungi\n")
}
///#Escaping and Non-Escaping closure
func getSumOf(array:[Int], handler: ((Int) -> Void)) -> String {
    //Step2
    var sum: Int = 0
    for item in array{
        sum += item
    }
    print("Sum at this stage is \(sum)")
    //Step 3
    handler(sum)
    return "Success"
}

func doSometing(){
    //Step 1
    let nums = [16,756, 442, 6, 23]
    let message = getSumOf(array:nums){
            (sum) in print("the sum is \(sum*2)")
        //Step 4, finishing the execution
        }
    print(message)
    }

doSometing()
