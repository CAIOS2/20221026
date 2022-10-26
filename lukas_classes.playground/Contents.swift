import Cocoa

var greeting = "Hello, playground"
class Vehicle {
    private let name: String
    private let purchaseCost: Double?
    private let costToRun: Double?
    private let fuelType: String?
    
    private var currentSpeed: Double
    private var currentGear: Int
    
    init(name: String) {
        self.name = name
        self.currentSpeed = 0
        self.currentGear = 0
        self.purchaseCost = 0
        self.costToRun = 0
        self.fuelType = ""
    }
}

extension Vehicle {
    func speedUp(_ by: Int) {
        let destination = currentSpeed + Double(by)
        print("Increasing speed of \(name) from \(currentSpeed) to \(destination)")
        currentSpeed = destination
    }
    func applyBrake(speedDecrease by: Int) {
        let destination = currentSpeed - Double(by)
        guard destination >= 0 else {
            print("Can't decrease speed to less than 0. Result is \(destination)")
            return
        }
        print("Decreasing speed of \(name) from \(currentSpeed) to \(destination)")
        currentSpeed = destination
    }
    func changeGear(gear: Int) {
        guard gear > 0 else {
            print("Gear must be 0 or higher")
            return
        }
        print("Changing gear of \(name) to \(gear)")
        currentGear = gear
    }
}

class ElectricVehicle: Vehicle {
    override init(name: String) {
        super.init(name: name)
    }
}
class DieselVehicle: Vehicle {
    override init(name: String) {
        super.init(name: name)
    }
}
class PetrolVehicle: Vehicle {
    override init(name: String) {
        super.init(name: name)
    }
}
    
func run_test() {
    let electricVehicle = ElectricVehicle(name: "Electric")
    let dieselVehicle = DieselVehicle(name: "Diesel")
    let petrolVehicle = PetrolVehicle(name: "Petrol")
    
    print("Electric vehicle:")
    electricVehicle.speedUp(50)
    electricVehicle.applyBrake(speedDecrease: 25)
    electricVehicle.changeGear(gear: 2)
    electricVehicle.changeGear(gear: 5)
    
    print("\nDiesel vehicle:")
    dieselVehicle.speedUp(100)
    dieselVehicle.applyBrake(speedDecrease: 10)
    dieselVehicle.changeGear(gear: 5)
    
    print("\nPetrol vehicle:")
    petrolVehicle.speedUp(10)
    petrolVehicle.applyBrake(speedDecrease: 0)
    petrolVehicle.changeGear(gear: 1)
    
    print("\nTests complete")
}

run_test()
