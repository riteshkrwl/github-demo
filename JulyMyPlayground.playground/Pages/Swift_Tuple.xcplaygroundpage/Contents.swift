//: [Previous](@previous)

import Foundation

func space(_ line: Int){ print("\n* * * * * * * * * * * * * * * * * * ##.... \(line) ...##\n")}

/*: # TUPLES
 
Tuples are group multiple values into a single compound type.
These values are not required to be of the same type.
*/
var str = "Hello, playground"
var checkTu = (8, "two", true)
print(checkTu.1)
print(checkTu.1)
/*:##Tuple Unwrapping
 The values of the tuple can be decomposed into a set of variables, as shown in the following
 */
let tuple2 = ("Hyderabad",40, true, 98.2)
var (city, districtCode, isState, FMFrequency) = tuple2

print("city:: \(city), DistrictCode::\(districtCode) , isState:: \(isState),FM Frequency:: \(FMFrequency)")
space(#line)
/*:##Naming tuples
 known as named tuples, allows us to avoid the decomposition step. A named tuple associates a name (key) with each element of the tuple. The following example shows how to create a named tuple:
 */

let tuple3 = (state:"Nagaland", stateCode:26,isSevenSisters:true)
print(tuple3.isSevenSisters)

space(#line)
//: # ENUMERATION
/*:
 Enumerations (also known as enums) are a special data type that enables us to group related types together and use them in a type-safe manner. Enumerations in Swift are not tied to integer values as they are in other languages, such as C or Java. In Swift, we are able to define an enumeration with a type (string, character, integer,
 or floating-point value) and then define its actual value (known as the raw value).
 */

enum SevenSisters : String {
    case Assam
    case Tripura
    case Manipur
    case Meghalaya
    case Mizoram
    case Sikkim
    case Nagaland
}

print(SevenSisters.Assam)
space(#line)

/*:
  - Note:
   When dehinining the the enumeratiion  type, the name of the enumeration should be uppercase, like other types. The member values can be uppercase or lowercase; however, it should be preferred to use lowercase.
*/

/*:
 The  valuee defined in an enumeration are consider to be the member values (or simply the members)  of the enumeration. However there is a shorter
 */
enum UnionTerritories {
    case Andman, Nikobar, Daman, Dew
    case pondichery, delhi, lakshdeep, chandigarh
}
space(#line)

/*:
 Enumerations can come prepopulated with raw values, which are required to be of the same type.
 The following example shows how to define an enumeration with string values:
 */

enum Devices: String {
    case MusicPlayer = "iPod"
    case Phone = "iPhone"
    case Tablet = "iPad"
}
print("We are using an \(Devices.Tablet.rawValue)")

//: [Next](@next)
