enum EngineType {
    case combustion
    case electric
}
enum GearType {
    case electric
    case geared
}

class Vehicle {
    var purchaseCost: Int
    var manufacturer: String
    var year: Int
    var gear: Int = 0
    var speed: Double?
    
    var aproximateRangeLeft: Int
    
    var gearType: GearType
    var engineType: EngineType
    
    private func addSpeedBased(force: Int, forceDivisor: Double, speedLimit: Int) {
        if var speed = self.speed {
            speed += Double(force) / forceDivisor
                
            if Int(speed) < speedLimit {
                self.speed = Double(speedLimit)
            } else {
                self.speed = speed
                
            }
        }
    }
    
    private func addSpeedCombustion(_ force: Int) {
        if gear != 0 {
            switch gear {
            case 1:
                addSpeedBased(force: force, forceDivisor: 12.5, speedLimit: 20)
                
                break
            case 2:
                addSpeedBased(force: force, forceDivisor: 8, speedLimit: 40)
                
                break
            case 3:
                addSpeedBased(force: force, forceDivisor: 6, speedLimit: 50)
                
                break
            case 4:
                addSpeedBased(force: force, forceDivisor: 5, speedLimit: 60)
                break
            default: break
            }
        }
    }
    
    private func addSpeedElectric(_ force: Int) {
        switch self.speed! {
        case 0..<20:
            self.speed = Double(force) / 12
            break
        case 20..<40:
            self.speed = Double(force) / 8
            break
        case 40..<60:
            self.speed = Double(force) / 6
            break
        case 60..<80:
            self.speed = Double(force) / 5
            break
        default: break
        }
    }
    
    func speedUp(force: Int) {
        if force < 100 && force > 0 {
            switch gearType {
            case .geared:
                addSpeedCombustion(force)
                break
            case .electric:
                addSpeedElectric(force)
                break
            }
        }
        
    }
    
    func applyBrake(speedDecrease: Int) {
        if let speed = self.speed {
            let newSpeed = speed - Double(speedDecrease)
            if newSpeed < 0 {
                self.speed = 0
            } else {
                self.speed = newSpeed
            }
        }
    }
    
    func changeGear(gear: Int) {
        if gearType == .geared {
            self.gear = gear
        }
    }
    
    func fuelUp(minutes: Int, hours: Int? = nil) {
        var time = minutes
        if hours != nil {
            time += hours! * 60
        }
        switch self.engineType {
        case .electric:
            let range = time * 3
            if range > 600 {
                self.aproximateRangeLeft = 600
            } else {
                self.aproximateRangeLeft = range
            }
            break
        case .combustion:
            let range = time * 35
            if range > 700 {
                self.aproximateRangeLeft = 700
            } else {
                self.aproximateRangeLeft = range
            }
            break
        }
    }
    
    init(manufacturer: String, year: Int, type: String, cost: Int) {
        self.manufacturer = manufacturer
        self.year = year
        self.purchaseCost = cost
        self.speed = 0
        self.aproximateRangeLeft = 0
        switch type {
        case "electric":
            self.gearType = .electric
            self.engineType = .electric
            break
        
        case "combustion":
            self.gearType = .geared
            self.engineType = .combustion
            break
        default:
            self.gearType = .geared
            self.engineType = .combustion
            break
        }
    }
}

let combustionVehicle = Vehicle(manufacturer: "Toyota", year: 2020, type: "combustion", cost: 35000)
let electricVehicle = Vehicle(manufacturer: "BMW", year: 2020, type: "electric", cost: 40000)

combustionVehicle.changeGear(gear: 1)
combustionVehicle.speedUp(force: 100)
combustionVehicle.applyBrake(speedDecrease: 8)
combustionVehicle.fuelUp(minutes: 20)

electricVehicle.speedUp(force: 60)
electricVehicle.applyBrake(speedDecrease: 5)
electricVehicle.fuelUp(minutes: 20, hours: 2)
