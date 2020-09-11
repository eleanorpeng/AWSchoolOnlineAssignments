//: [Collection](@previous)

import Foundation
//Q1
let lottoNumbers=[10,9,8,7,6,5]
for i in 3...5{
    print(lottoNumbers[i])
}

//Q2
print()
for num in lottoNumbers.reversed(){
    print(num)
}

for num in lottoNumbers{
    if num % 2 == 0{
        print(num)
    }
}

print()

//Q3
var j = lottoNumbers.count - 1
while j >= 0{
    print(lottoNumbers[j])
    j-=1
}

j = 0
while j < lottoNumbers.count{
    if lottoNumbers[j] % 2 == 0{
        print(lottoNumbers[j])
    }
    j+=1
}

print()

//Q4
j=lottoNumbers.count - 1
repeat{
    print(lottoNumbers[j])
    j-=1
} while j >= 0

j=0
repeat{
    if lottoNumbers[j] % 2 == 0{
        print(lottoNumbers[j])
    }
    j+=1
} while j < lottoNumbers.count

//Q5
/*:
 When while loop is used, the condition is evaluated first before the code is executed. Repeat-while loop, however, execute the code first before checking the condition at the end.
 */

//Q6
var isRaining: Bool = true
if isRaining{
    print("It's raining. I don't want to work today.")
}else{
    print("Although it's sunny, I still don't want to work today.")
}

//Q7
var jobLevel = 4
switch jobLevel {
case 1:
    print("Member")
case 2:
    print("Team Leader")
case 3:
    print("Manager")
case 4:
    print("Director")
default:
    print("We don't have this job.")
}
//: [Function](@next)
