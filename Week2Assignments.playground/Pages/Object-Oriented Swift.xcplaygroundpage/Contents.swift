//: [Previous](@previous)

import Foundation



class Animal {
    enum Gender{
        case male
        case female
        case undefined
    }
    let gender: Gender
    init(gender: Gender) {
        self.gender = gender
    }
    func eat(){
        print("I eat everything!")
    }
}

class Elephant: Animal{
    override func eat() {
        print("I eat roots!")
    }
}

class Tiger: Animal{
    override func eat() {
        print("I eat moose!")
    }
}

class Horse: Animal{
    override func eat() {
        print("I eat grasses!")
    }
}

class Zoo {
    var weeklyHot: Animal
    init(weeklyHot: Animal){
        self.weeklyHot = weeklyHot
    }
}

let zoo = Zoo(weeklyHot: Tiger(gender: .male))
let tiger = Tiger(gender: .male)
let elephant = Elephant(gender: .female)
let horse = Horse(gender: .undefined)

zoo.weeklyHot = tiger
zoo.weeklyHot = elephant
zoo.weeklyHot = horse

//Q4
/*:
 The main difference between Struct and Class is their types. Structs are value types while Classes are reference types. For value types, when you assign them to a variable or constant, a whole new independent value is copied over, which modifying one of them wouldn't affect the other. On the other hand, when you assign reference types to a variable or constant, they are ultimately referencing to the same instance, meaning modifying one of them will affect the other. Other minor differences include: Classes allow you to create parent and children class while Structs don't, Structs are immutable when declared as constants, but Class properties remain mutable even if declared as constants.
 */

//Q5
/*:
 Instance method can only be called by created instances of the type it belongs to. However, type method can be called directly on the type without creating an instance of that type. When defining type method, there's usually the key word "struct" before the method's name.
 */

//Q6
/*:
 Initializer helps to prepare the process of creating an instance, in which it sets the initial value for each stored properties before the new instance is used.
 */

//Q7
/*:
 Self is a reference back to the properties of the instance itself created in the struct, enum, or class.
 */

//Q8
/*:
 When you assign a reference type to a variable or constant, it's ultimately referring to the same instance. However, when you assign a value type to a variable or constant, it's making an independent and unique copy, which will not be affected if you modify one of them. In short, reference types are sharing a copy of an instance's data, but value types are holding their own unique copy of the instance's data.
 */


//: [Enum & Optionals](@next)
