import UIKit

extension Int{
    func sayHello(){
        print("Hello, I'm gona be dtronger than yesterday")
    }
}

1.sayHello()
//MARK: Privacy Protection Levels

///##Class definition##
class Dog{
    var name = "Timmi"
    var wgatADogSays = "woof"
    
    func bark(){
        print(self.wgatADogSays)
    }
    
    func speak() {
        self.bark()
    }
}

///##class institialization##
///- Creating a class Dog instance as Splitz

var splitz = Dog()
splitz.name = "Dino"
splitz.bark()
print(splitz.name)
var orion = Dog()

print(orion.name)

///##Private Pritection level##

class Animal{
    
    var name : String?
    private var whatItSays = "meow" ///*Observe it has Private accessor*
    func speak() {
        print(self.whatItSays)
    }
}

var cat = Animal()
cat.name = "Glaxie"
//cat.whatItSays = "meow" //uncomment and check
cat.speak()
