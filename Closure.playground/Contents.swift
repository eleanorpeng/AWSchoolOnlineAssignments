import UIKit

let number = { (num: Int) -> Bool in
    if num % 2 != 0 {
        return true
    } else {
        return false
    }
}

number(1)
number(2)
