import UIKit

var isOddNumber = { (num: Int) -> Bool in
    if num % 2 != 0 {
        return true
    } else {
        return false
    }
}

isOddNumber(2)
isOddNumber(1)
