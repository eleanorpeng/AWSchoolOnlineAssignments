//: [Basic](@previous)

import Foundation

//Q1
var myFriends: [String] = []

//Q2
myFriends += ["Ian", "Bomi", "Kevin"]

//Q3
myFriends.append("Michael")

//Q4
myFriends.insert(myFriends.remove(at: 2), at: 0)

//Q5
for friend in myFriends{
    print(friend)
}

//Q6
//myFriends[5]
/*:
 I used the code above to find who's at index 5 in the myFriends array. However, it resulted in an error because the index is out of range.
 */

//Q7
myFriends.first

//Q8
myFriends.last

//Q9
var myCountryNumber: [String:Int] = [:]

//Q10
myCountryNumber["US"] = 1
myCountryNumber["GB"] = 44
myCountryNumber["JP"] = 81

//Q11
myCountryNumber["GB"] = 0

//Q12
/*:
 An empty dictionary can be declared by providing the types of the key and the value, just like the one in Q9.
 */

//Q13
/*:
 There are several ways to remove a key-value pair in a dictionary. Here are some instances:
 */

myCountryNumber["Taiwan"] = 886
myCountryNumber["Singapore"] = 65

myCountryNumber["Taiwan"] = nil
myCountryNumber.removeValue(forKey: "Singapore")

print(myCountryNumber)

//: [Control Flow](@next)
