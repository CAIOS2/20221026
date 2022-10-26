
// #1

//class Person {
//    let name: String
//    let nationality: String
//    var age: Int
//
//    init(name: String, nationality: String, age: Int) {
//        self.name = name
//        self.nationality = nationality
//        self.age = age
//    }
//
//    func sayHello() {
//        print("Hello, my name is \(name), I am from \(nationality) and I am \(age) old!")
//    }
//
//    func isAdult() -> Bool {
//        return age > 18
//    }
//}
//
//let personClass = Person(name: "👶", nationality: "Burger", age: 1)
//let frogClass = Person(name: "🐸", nationality: "Kebab", age: 20)

//print(personClass.name)
//print(frogClass.name)

//personClass.sayHello()

//print("Student name \(frogClass.name), is an adult - \(frogClass.isAdult())")




// #2

class Item {
    let name: String
    let description: String
    let price: Double
    
    init(itemName: String, itemDescription: String, itemPrice: Double) {
        name = itemName
        description = itemDescription
        price = itemPrice
    }
    
    func viewFullDescription(withNotes notes: String) {
        print("Description \(description); Notes: \(notes)")
    }
}

let playStation = Item(itemName: "Playstation 5", itemDescription: "Game console", itemPrice: 980)


//playStation.viewFullDescription(withNotes: "No aditional notes")



// #3

let bicycle = Item(itemName: "Cube", itemDescription: "Mountain Bike", itemPrice: 1500)
let laptop = Item(itemName: "Macbook", itemDescription: "Apple laptop", itemPrice: 1300)

class Cart {
    var items = [Item]()
//    var exampleItems = Array<Item>()
    
    func calculateTotalPrice() -> Double {
        var sum: Double = 0
        
        items.forEach { item in
            sum = sum + item.price
        }
        
        return sum
    }
    
    func mostExpensiveItem() -> Item {
        return items.max { firstItem, secondItem in
            firstItem.price < secondItem.price
        }!
    }
}

let cart = Cart()
cart.items.append(playStation)
cart.items.append(bicycle)
cart.items.append(laptop)

//print(cart.calculateTotalPrice())

//let mostExpensiveItem = cart.mostExpensiveItem()
//print(mostExpensiveItem.name)

//print(cart.mostExpensiveItem().name)


// #4

//class Vehicle {
//    let manufacturer: String
//    let year: Int
//
//    init(vehicleManufacturer: String, vehicleYear: Int) {
//        manufacturer = vehicleManufacturer
//        year = vehicleYear
//    }
//}
//
//class Person {
//    var name: String
//    var age: Int
//
//    var ownedVehicle: Vehicle
//
//    init(personName: String, personAge: Int, personVehicle: Vehicle) {
//        name = personName
//        age = personAge
//        ownedVehicle = personVehicle
//    }
//
//    func isAdult() -> Bool {
//        age > 18
//    }
//}
//
//let vehicle = Vehicle(vehicleManufacturer: "Tesla", vehicleYear: 2017)
//let person = Person(personName: "Arnas", personAge: 25, personVehicle: vehicle)

// #5

//class Vehicle {
//    var manufacturer: String
//    var year: Int
//
//    init(vehicleManufacturer: String, vehicleYear: Int) {
//        manufacturer = vehicleManufacturer
//        year = vehicleYear
//    }
//}
//
//class ElectricVehicle: Vehicle {
//    var electricRange: Double
//
//    init(manufacturer: String, year: Int, electricRange: Double) {
//        self.electricRange = electricRange
//        super.init(vehicleManufacturer: manufacturer, vehicleYear: year)
//    }
//
//    override init(vehicleManufacturer: String, vehicleYear: Int) {
//        electricRange = 100.0
//        super.init(vehicleManufacturer: vehicleManufacturer, vehicleYear: vehicleYear)
//    }
//
//    init() {
//        self.electricRange = 1
//        super.init(vehicleManufacturer: "", vehicleYear: 2)
//    }
//}
//
//let electricVehicle = ElectricVehicle(vehicleManufacturer: "Audi", vehicleYear: 1992)
//
//let anotherElectricVehicle = ElectricVehicle()
//
//class Bus: Vehicle {
//    var isToiletPresent = true
//    var isTrolley = false
//}
//
//let bus = Bus(vehicleManufacturer: "Scania", vehicleYear: 2005)
//
//
//class Motorcycle: Vehicle {
//    var isPaddlesForPassengerPresent = false
//}
//
//let motorcycle = Motorcycle(vehicleManufacturer: "Yamaha", vehicleYear: 2001)
//
//motorcycle.isPaddlesForPassengerPresent = true
//motorcycle.manufacturer = "Ducati"
//motorcycle.year = 2010


// #6

//class Vehicle {
//    var manufacturer: String
//    var year: Int
//
//    init(vehicleManufacturer: String, vehicleYear: Int) {
//        manufacturer = vehicleManufacturer
//        year = vehicleYear
//    }
//
//    func sayBeepBeep() {
//        print("Beep beep! I am a Vehicle!")
//    }
//}
//
//class ElectricVehicle: Vehicle {
//    var electricRange: Double
//
//    init(manufacturer: String, year: Int, electricRange: Double) {
//        self.electricRange = electricRange
//        super.init(vehicleManufacturer: manufacturer, vehicleYear: year)
//    }
//
//    func charge(hours: Int) {
//        electricRange += 100 * Double(hours)
////        electricRange = electricRange + 100 * Double(hours)
//    }
//
//    override func sayBeepBeep() {
//        super.sayBeepBeep()
//        print("Beep beep! I am an electric vehicle!")
//    }
//}
//
//let electricVehicle = ElectricVehicle(manufacturer: "Tesla", year: 2017, electricRange: 350)
//electricVehicle.sayBeepBeep()
//
//print(electricVehicle.electricRange)
//electricVehicle.charge(hours: 2)
//print(electricVehicle.electricRange)

    //#Uzduotis
class Vehicle {
    private let name: String
    private let purchaseCost: Double
    private let costToRun: Double
    private let fuelType: String
    private var currentSpeed: Duoble
    private var currentGear: Int
}
