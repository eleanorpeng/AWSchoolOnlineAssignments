//: [Enum & Optionals](@previous)

import Foundation


protocol PoliceMan {
    func arrestCriminals()
}


struct Person: PoliceMan {
    let name: String
    let toolMan: ToolMan
    func arrestCriminals() {
        return
    }
}

protocol ToolMan {
    func fixComputer()
}

struct Engineer: ToolMan{
    func fixComputer() {
        return
    }
}

let steven = Person(name: "Steven", toolMan: Engineer())


//: [Protocol](@next)
