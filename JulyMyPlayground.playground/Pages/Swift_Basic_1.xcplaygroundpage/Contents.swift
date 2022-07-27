//: [Previous](@previous)

import Foundation

var str = "Hello, playground"
//: # Swift Basic

//: ## Constants & Variables
/*:
 Constants and variables must be defined prior to using them. To define a constant,
 you use the let keyword, and to define a variable, you use the var keyword.
 The following code shows how to define both constants and variables:
 */

// Constants
let freezingTemperatureOfWaterCelsius = 0
let speedOfLightKmSec = 300000
// Variables
var currentTemperature = 22
var currentSpeed = 55

/*:
 We can declare multiple constants or variables in a single line by separating them with a comma.
 For example, we could shrink the preceding four lines of code down to two lines,
 as shown here:
 */

// Constants
let totalPlanestInSolarSystem = 8,  sunInSolarSystem = 1
// Variables
var totalDaysInWeek = 7, daysInAMonth = 30, dyasInAYear = 365

/*:
 we can change the value of a veriable but not of the constant, check below
 */
print(currentSpeed)
//: changing/assigning a new value to `currentSpeed`
currentSpeed = 44

//: now try changing the value of constant ` speedOfLightKmSec `
//uncommect the below line to to check

//speedOfLightKmSec = 3005

/*: ## Type Safety
 Swift is a type-safe language, which means we are required to define the types of the values we are going to store in a variable.
 We will get an error if we attempt to assign a value to a variable that is of the wrong type.
 The following playground shows what happens if we attempt to put a string value into a variable that expects integer values.
 Swift performs a type check when it compiles code, and so it will flag any mismatched types with an error.
 */

var earthNaturalSatellite = 1
//: now try to assign anither type value to `chechInteger`, like below line
//earthNaturalSatellite = "Moon"

/*: ## Type inference
 Type inference allows us to omit the variable type when the variable is defined with an initial value.
 The compiler will infer the type based on that initial value.
 */
var x = 3.14 // Double type
var y = "Hello" // String type
var z = true // Boolean typ

/*: ## Explicit types
 Type inference is a very nice feature in Swift and is one that you will probably get used to very quickly.
 However, there are times when we would like to explicitly define a variable's type.
 For example, in the preceding example, the variable x is inferred to be Double, but what if we wanted the variable type to be Float?
 We can explicitly define a variable type like this:
 */
var x1:Float = 3.14
var y2 : String = "Hola"

//: - - - - - - - - - - - - - - - -
//: - - - - - - - - - - - - - - - -

/*: ## Numeric Type
 Swift contains many of the standard numeric types that are suitable for storing various integer and floating-point values.
 Let's start by looking at the integer type
 ### Integer types
 An integer is a __whole number__ and can be either __signed__  _(positive, negative, or zero)_ or __unsigned__ (positive or zero). Swift provides several Integer types of different sizes. Table 3.1 shows the value ranges for the different integer types on a 64-bit system:
 
    __Types of Integer in swift__
  - Int
  - Int8
  - Int16
  - Int32
  - Int64
  - UInt
  - UInt8
  - UInt16
  - UInt32
  - UInt64
 */

//: #### Int type
let integer_Type : Int = 2263
print("Type of ",type(of:integer_Type))
print("Int max \(Int.max)")
print("Int min \(Int.min)")
//: - - - - - - - - - - - - - - - -

//: #### Int8 type
let integer8_Type : Int8 = 22
print("Type of ",type(of:integer8_Type))
print("Int8 max \(Int8.max)")
print("Int8 min \(Int8.min)")

//uncomment the below line check what is happening, and try to find the reason
//integer_8_Type = 233
//: - - - - - - - - - - - - - - - -

//: #### Int16 type
let integer16_Type : Int16 = -32000
print("Type of ",type(of:integer16_Type))
print("Int16 max \(Int16.max)")
print("Int16 min \(Int16.min)")
//: - - - - - - - - - - - - - - - -

//: #### Int32 type
let integer32_Type : Int32 = 2147483647
print("Type of ",type(of:integer32_Type))
print("Int32 max \(Int32.max)")
print("Int32 min \(Int32.min)")
//: - - - - - - - - - - - - - - - -

//: #### Int64 type
let integer64_Type : Int64 = 3223372036854775808
print("Type of integer64_Type ::",type(of:integer64_Type))
print("Int64 max \(Int32.max)")
print("Int64 min \(Int32.min)")
//: - - - - - - - - - - - - - - - -

//: #### UInt type
let unsigned_integer_Type : UInt = 2263
print("Type of ",type(of:unsigned_integer_Type))
print("UInt max \(UInt.max)")
print("UInt min \(UInt.min)")
//: - - - - - - - - - - - - - - - -

//: #### UInt8 type
let unsigned_integer8_Type : UInt8 = 222
print("Type of ",type(of:unsigned_integer8_Type))
print("UInt8 max \(UInt8.max)")
print("UInt8 min \(UInt8.min)")
//: - - - - - - - - - - - - - - - -

//: #### Int16 type
let unsigned_integer16_Type : UInt16 = 65535
print("Type of ",type(of:unsigned_integer16_Type))
print("UInt16 max \(UInt16.max)")
print("UInt16 min \(UInt16.min)")
//: - - - - - - - - - - - - - - - -

//: #### Int32 type
let unsigned_integer32_Type : UInt32 = 4147483647
print("Type of ",type(of:unsigned_integer32_Type))
print("UInt32 max \(UInt32.max)")
print("UInt32 min \(UInt32.min)")
//: - - - - - - - - - - - - - - - -

//: #### Int64 type
let unsigned_integer64_Type : UInt64 = 13_223_372_036_854_775_808
print("Type of integer64_Type ::",type(of:unsigned_integer64_Type))
print("UInt64 max \(UInt32.max)")
print("UInt64 min \(UInt32.min)")
/*:Yes, Swift also allows us to insert arbitrary underscores in our numeric literals.
This can improve the readability of our code without changing the underlying value.
As an example, if we were defining constant `unsigned_integer64_Type`
*/
//: - - - - - - - - - - - - - - - -

/*:Integers can also be represented as binary, octal, and hexadecimal numbers.
 We just need to add a prefix to the number to tell the compiler which base the number should be in.
 The prefix takes the form of a zero, followed by the base specifier.
 Below are the prefix for each numerical base:
   - Decimal None
   - Binary  `0b`
   - Octal  `0o`
   - hexadecimal `0x`
 */
let r = 95
let binary_Interger = 0b101111
let ocatal_Integer = 0o137
let hexadecimal_Integer = 0x5f

/*: ### Floating-point & Double values
 A floating-point number is a number with a decimal component.
 There are two standard floating-point types in Swift: Float and Double.
 The Float type represents a 32-bit floating-point number, while the Double type represents a 64-bit floating- point number.
 While the Float type is a 32-bit floating-point number, Swift actually supports four floating-point types.
 These are Float16, Float32, Float64, and Float80. Remember, when the Float type is used,
 it is a 32-bit floating-point number;
 if you want to use the other precisions, you will need to define it.
 */
let pai: Float = 3.142
let half: Double = 0.5
/*:
  - Note:
    when you use type inference for a decimal number,
    Swift will default to a Double type rather than a Float type.
*/

let quater = 0.25
print("quater type is :: ",type(of:quater))
/*:
  - Important:
  "try below addition of adding a Int and Double/Float"
 */

//let result = pai + r
/*:To eleminate this error we need to add two Integer of same type.
 Converting them like below
*/
let  result = pai + Float(r)

var intVar = 32
print("intVar type is :: ",type(of:intVar))
var floatVar = Float(intVar)
print("floatVar type is :: ",type(of:floatVar))
var uint16Var = UInt16(intVar)
print("uint16Var type is :: ",type(of:uint16Var))
/*:
 Generally, when we are adding two different types together,
 we will want to convert the number with the least floating-point precision,
 like an integer or float, to the type with the highest precision, like a double.
 */

//: [Next](@next)
