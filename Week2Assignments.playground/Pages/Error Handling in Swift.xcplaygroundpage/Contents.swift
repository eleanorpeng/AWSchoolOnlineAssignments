//: [Protocol](@previous)

enum GuessNumberGameError: Error {
    case wrongNumber
}

class GuessNumberGame {
    var targetNumber = 10
    
    func guess(number: Int) throws {
        guard number == targetNumber else {
            throw GuessNumberGameError.wrongNumber
        }
        print("Guess the right number: \(targetNumber)")
    }
    
}

let game1 = GuessNumberGame()
do {
    try game1.guess(number: 20)
} catch GuessNumberGameError.wrongNumber {
    print("You guess the wrong number.")
}

