//Q1
enum Gasoline: String {
    case oil92 = "92"
    case oil95 = "95"
    case oil98 = "98"
    case diesel = "Diesel"
    
    func getPrice() -> String{
        switch self {
        case .oil92:
            return "22"
        case .oil95:
            return "23.5"
        case .oil98:
            return "25.5"
        case .diesel:
            return "19.5"
        }
    }
}


print(Gasoline.oil92.rawValue)
let gasoPrice = Gasoline.oil98.getPrice()
print(gasoPrice)


/*:
 Enum associated value is the additional information that's stored with difference case values. Different from raw values, associated values are set each time when a new instance is created. It works by defining the type of the associated value after each case. For instance, if I'm creating an associated value for oil92, I would declare it as below:
 
 case oil92(String)
 */
//Q2
class Pet{
    let name: String
    init(name: String) {
        self.name = name
    }
}

class People {
    let name: String
    var pet: Pet?
    init(name: String, pet: Pet?) {
        self.name = name
        self.pet = pet
    }
}

extension String: Error{}

let peter = People(name: "Peter", pet: nil)

if let peterPet = peter.pet {
    print("\(peter.name) has \(peterPet) as a pet!")
}else{
    print("\(peter.name) has no pet!")
}

let chris = People(name: "Chris", pet: nil)


guard let chrisPet = chris.pet else{
    throw "\(chris.name) has no pet!"
}






