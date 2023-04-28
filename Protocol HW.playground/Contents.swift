import Foundation
import UIKit

enum Model {
    case bmw, honda, audi, lexus, volvo
}

enum Accessories: String {
    case toning = "Тонировка", signaling = "Сигнализация", rugs = "Коврики ", mudFlaps = "Брызговики", firstAidKitAndFireExtinguisher = " Аптечка и огнетушитель"
}

enum DealershipName {
    case bmw, honda, audi, lexus, volvo
}

protocol Car {
    
    var model: Model { get }
    var color: String { get }
    var buildDate: (Int, Int, Int) { get }
    var price: Double { get set }
    var accesories: [Accessories] { get set }
    var isServiced: Bool { get set }
    var specialOffer: Bool { get set }
    var vin: String { get }

}

protocol DealershipProtocol {
    
    var name: DealershipName { get set }
    var showroomCapacity: Int { get }
    var stockCars: [Car] { get set } //Автомобили на парковке склада
    var showroomCars: [Car] { get set } //Авомобили в автосалоне
    var car: [Car] { get set } //Все автомобили в наличии
    func offerAccesories(_ accesories: [Accessories])
    func presaleService(_ car: inout Car)
    func addToShowroom(_ car: Car)
    func sellCar(_ car: Car)
    func orderCar()
}

struct Bmw: Car {
    
    var model: Model
    var color: String
    var buildDate: (Int, Int, Int)
    var price: Double
    var accesories: [Accessories] = [.toning, .rugs, .mudFlaps]
    var isServiced: Bool = false
    var specialOffer: Bool = false
    var vin: String
}

struct Honda: Car {
    
    var model: Model = Model.honda
    var color: String = "white"
    var buildDate = (25, 09, 2022)
    var price: Double = 4500000.00
    var accesories: [Accessories] = [.toning, .rugs, .mudFlaps]
    var isServiced: Bool = false
    var specialOffer: Bool = false
    var vin: String

}

struct Audi: Car {
    
    var model: Model = Model.audi
    var color: String = "blue"
    var buildDate = (12, 04, 2022)
    var price: Double = 8500000.00
    var accesories: [Accessories] = [.toning, .rugs, .mudFlaps, .signaling]
    var isServiced: Bool = true
    var specialOffer: Bool = false
    var vin: String

}

struct Lexus: Car {
    
    var model: Model = Model.lexus
    var color: String = "black night"
    var buildDate = (26, 07, 2022)
    var price: Double = 14999000.00
    var accesories: [Accessories] = [.toning, .rugs, .mudFlaps, .signaling]
    var isServiced: Bool = false
    var specialOffer: Bool = false
    var vin: String

}

struct Volvo: Car {
    
    var model: Model = Model.volvo
    var color: String = "super white"
    var buildDate = (23, 02, 2023)
    var price: Double = 10500000.00
    var accesories: [Accessories] = [.toning, .rugs, .mudFlaps, .signaling]
    var isServiced: Bool = false
    var specialOffer: Bool = false
    var vin: String

}

class DealerClass: DealershipProtocol {
    var name: DealershipName
    let showroomCapacity: Int
    var stockCars: [Car]
    var showroomCars: [Car]
    var car: [Car] {
        get {
            return stockCars + showroomCars
        }
        set {
            let stockCars = newValue.dropLast(showroomCars.count)
            let showroomCars = newValue.dropFirst(stockCars.count)
        }
    }
    
    init(name: DealershipName, showroomCapacity: Int, stockCars: [Car], showroomCars: [Car], car: [Car]) {
        self.name = name
        self.showroomCapacity = showroomCapacity
        self.stockCars = stockCars
        self.showroomCars = showroomCars
        self.car = car
    }
    
    func offerAccesories(_ accesories: [Accessories]) {
        print("Диллерский центр BMW предлагает приобрести дополниетльное оборудование к Вашему авто:")
        for i in accesories {
            print(i)
        }
    }
    
    func presaleService(_ car: inout Car) {
        if car.isServiced {
            print("Предпродажная подготовка уже проводилась")
        } else {
            car.isServiced = true
            print("Для автомобиля \(car.model) успешно пройдена предпродажная подготовка")
        }
    }
    
    func addToShowroom(_ car: Car) {
        if stockCars.isEmpty {
            print("Нет автомобилей на парковке")
        } else {
            for (n,m) in stockCars.enumerated() {
                if m.model == car.model {
                    stockCars.remove(at: n)
                    break
                }
            }
            showroomCars.append(car)
            print("Автомобиль \(car.model) перемещен с парковки в автосалон")
        }
    }
    
    func sellCar(_ car: Car) {
        if showroomCars.isEmpty {
            print("Все автомобиле в автосалоне проданы, проверьте, возможно есть автомобиле на парковке")
        } else {
            if car.isServiced == false {
                print("У автомобиля \(car) не пройдена предпродажная подготовка")
            }
            if car.accesories.isEmpty {
                offerAccesories([.toning, .mudFlaps, .signaling, .rugs])
            }
            for (n,m) in showroomCars.enumerated() {
                if m.model == car.model {
                    showroomCars.remove(at: n)
                    print("Автомобиль \(car.model) успешно продан")
                }
            }
        }
    }
        
    func orderCar() {
        if name == DealershipName.bmw {
            let car = factory.randomElement()
            stockCars.append(car!)
            print("Добавлен автомобиль на парковку \(name.self)")
        } else if name == DealershipName.honda {
            let car = factory.randomElement()
            stockCars.append(car!)
            print("Добавлен автомобиль на парковку \(name.self)")
        } else if name == DealershipName.audi{
            let car = factory.randomElement()
            stockCars.append(car!)
            print("Добавлен автомобиль на парковку \(name.self)")
        } else if name == DealershipName.lexus {
            let car = factory.randomElement()
            stockCars.append(car!)
            print("Добавлен автомобиль на парковку \(name.self)")
        } else if name == DealershipName.volvo {
            let car = factory.randomElement()
            stockCars.append(car!)
            print("Добавлен автомобиль на парковку \(name.self)")
        }
    }
}

//Автомобили с завода
let bmwX5Black = Bmw(model: .bmw, color: "black", buildDate: (20, 02, 2023), price: 7300000, vin: "WBAPD11080WF38461")
let bmwX5Wight = Bmw(model: .bmw, color: "wight", buildDate: (20, 03, 2023), price: 7450000, vin: "WBAPD11080WF27562")
let bmwX5Red = Bmw(model: .bmw, color: "red", buildDate: (20, 04, 2023), price: 7600000, vin: "WBAPD11080WF295732")
let factory = [bmwX5Black, bmwX5Wight, bmwX5Red]

//Создадим классы дилерских центров
class BMWClass: DealerClass {
    let tagline: String
    override init(name: DealershipName, showroomCapacity: Int, stockCars: [Car], showroomCars: [Car], car: [Car]) {
        self.tagline = "С удовольствием за рулем"
        super.init(name: .bmw, showroomCapacity: 50, stockCars: [], showroomCars: [], car: [])
    }
}

class HondaClass: DealerClass {
    let tagline: String
    override init(name: DealershipName, showroomCapacity: Int, stockCars: [Car], showroomCars: [Car], car: [Car]) {
        self.tagline = "Сначала человек, потом машина"
        super.init(name: .honda, showroomCapacity: 50, stockCars: [], showroomCars: [], car: [])
    }
}

class AudiClass: DealerClass {
    let tagline: String
    override init(name: DealershipName, showroomCapacity: Int, stockCars: [Car], showroomCars: [Car], car: [Car]) {
        self.tagline = "Продвижение через технологии"
        super.init(name: .audi, showroomCapacity: 50, stockCars: [], showroomCars: [], car: [])
    }
}

class LexusClass: DealerClass {
    let tagline: String
    override init(name: DealershipName, showroomCapacity: Int, stockCars: [Car], showroomCars: [Car], car: [Car]) {
        self.tagline = "Неудержимое стремление к совершенству"
        super.init(name: .lexus, showroomCapacity: 50, stockCars: [], showroomCars: [], car: [])
    }
}

class VolvoClass: DealerClass {
    let tagline: String
    override init(name: DealershipName, showroomCapacity: Int, stockCars: [Car], showroomCars: [Car], car: [Car]) {
        self.tagline = "Вольво для жизни"
        super.init(name: .lexus, showroomCapacity: 50, stockCars: [], showroomCars: [], car: [])
    }
}

//Инициализация дилерских центров
var bmwDealer = BMWClass(name: DealershipName.bmw, showroomCapacity: 50, stockCars: [], showroomCars: [], car: [])
var hondaDealer = HondaClass(name: DealershipName.bmw, showroomCapacity: 50, stockCars: [], showroomCars: [], car: [])
var audiDealer = AudiClass(name: DealershipName.bmw, showroomCapacity: 50, stockCars: [], showroomCars: [], car: [])
var lexusDealer = LexusClass(name: DealershipName.bmw, showroomCapacity: 50, stockCars: [], showroomCars: [], car: [])
var volvoDealer = VolvoClass(name: DealershipName.bmw, showroomCapacity: 50, stockCars: [], showroomCars: [], car: [])

//Показать слогпн с использованием конструкции приведения типов
let dealerships = [bmwDealer, hondaDealer, audiDealer, lexusDealer, volvoDealer]

//Экземпляр bmwDealer является наследником DealerClass, DealershipProtocol, BMWClass
for dealer in dealerships {
    if dealer is DealerClass {
        if dealer is DealershipProtocol {
            if dealer is BMWClass {
                print(bmwDealer.tagline)
            }
            if dealer is HondaClass {
                print(hondaDealer.tagline)
            }
            if dealer is AudiClass {
                print(audiDealer.tagline)
            }
            if dealer is LexusClass {
                print(lexusDealer.tagline)
            }
            if dealer is VolvoClass {
                print(volvoDealer.tagline)
            }
        }
    }
}

//Добавляем автомобили
var bmwAuto = Bmw(model: .bmw, color: "blue", buildDate: (20, 02, 2022), price: 6800000, vin: "WBAPD11080WF92759")
bmwDealer.orderCar()
bmwDealer.orderCar()
bmwDealer.showroomCars
bmwDealer.stockCars
bmwDealer.car
bmwDealer.addToShowroom(bmwAuto)
bmwDealer.showroomCars
bmwDealer.stockCars
bmwDealer.car

protocol SpecialOffer {
    func addEmergencyPack()
    func makeSpecialOffer()
}

extension DealerClass: SpecialOffer {
    func addEmergencyPack() {
        for (n,m) in car.enumerated() {
            if !m.accesories .contains(.firstAidKitAndFireExtinguisher) {
                car[n].accesories.append(Accessories.firstAidKitAndFireExtinguisher)
                print("Автомобилю \(car[n].model) добавлены аптечка и огнетушитель")
            }
        }
    }
    
    func makeSpecialOffer() {
        
        for (n,m) in showroomCars.enumerated() {
            
            if m.buildDate.2 < Calendar.current.component(.year, from: Date()) {
                if m.specialOffer == false {
                    showroomCars[n].accesories.append(.firstAidKitAndFireExtinguisher)
                    let oldPrice = car[n].price
                    let newPrice = car[n].price * 0.85
                    showroomCars[n].price = newPrice
                    print("Автмобиль \(showroomCars[n].model) \(showroomCars[n].buildDate.2) года перемещен в автосалон, сделана скидка 15% и добавлены \(Accessories.firstAidKitAndFireExtinguisher.rawValue). Актуальная цена \(newPrice) вместо \(oldPrice)")
                    showroomCars[n].specialOffer = true
                }
            }
            
        }
        
        for (n,m) in stockCars.enumerated() {
            if m.buildDate.2 < Calendar.current.component(.year, from: Date()) {
                if m.specialOffer == false {
                    stockCars[n].accesories.append(.firstAidKitAndFireExtinguisher)
                    let oldPrice = car[n].price
                    let newPrice = car[n].price * 0.85
                    stockCars[n].price = newPrice
                    print("Автмобиль \(stockCars[n].model) \(stockCars[n].buildDate.2) года перемещен в автосалон, сделана скидка 15% и добавлены \(Accessories.firstAidKitAndFireExtinguisher.rawValue). Актуальная цена \(newPrice) вместо \(oldPrice)")
                    stockCars[n].specialOffer = true
                    showroomCars.append(stockCars[n])
                    stockCars.remove(at: n)
                    
                }
            }
        }
    }
}
    

//Спецпредложение
bmwDealer.car
bmwDealer.showroomCars
bmwDealer.stockCars
bmwDealer.addEmergencyPack()
bmwDealer.makeSpecialOffer()
bmwDealer.makeSpecialOffer()
bmwDealer.car
bmwDealer.showroomCars
bmwDealer.stockCars

audiDealer.car
audiDealer.showroomCars
audiDealer.stockCars
audiDealer.makeSpecialOffer()
audiDealer.car
audiDealer.showroomCars
audiDealer.stockCars

lexusDealer.makeSpecialOffer()

