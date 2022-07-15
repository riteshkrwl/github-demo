//: [Previous](Swift_Function_2)

import Foundation

func space(_ line: Int){ print("\n* * * * * * * * * * * * * * * * * * ##.... \(line) ...##\n")}

//MARK: *FUNCATION OVERLOADING*
///This means that two functions with exactly the same name, including their  parameter label, can coexist as long as they have different *signatures*.

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

///Examples with same Function
///
///
/// and parameters names but return type different will not overload the function
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

//: [Next](Swift_Closure)
