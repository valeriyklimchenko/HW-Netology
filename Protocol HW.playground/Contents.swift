

enum Model {
    case bmw
}

enum Accessories {
    case ton
}

enum DealershipName {
    case bmw
}

protocol Car {
    
    var model: Model { get }
    var color: String { get }
    var buildDate: String { get }
    var price: Double { get set } //////
    var accesories: Accessories { get set }
    var isServiced: Bool { get set }

}

protocol Dealership {
    
    var name: DealershipName { get }
    var showroomCapacity: Int { get }
    var stockCars: Array<Car> { get set }
    var showroomCars: Array<Car> { get set }
    var car: Array<Car> { get set }
}
