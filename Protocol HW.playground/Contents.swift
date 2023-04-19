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

}

protocol DealershipProtocol {
    
    var name: DealershipName { get }
    var showroomCapacity: Int { get }
    var stockCars: Array<Car> { get set } //Автомобили на парковке склада
    var showroomCars: Array<Car> { get set } //Авомобили в автосалоне
    var car: Array<Car> { get set } //Все автомобили в наличии
    func offerAccesories(_ accesories: [Accessories])
    func presaleService(_ car: inout Car)
    func addToShowroom(_ car: inout Car)
    func sellCar(_ car: Car)
    func orderCar()
}

struct Bmw: Car {
    
    var model: Model = Model.bmw
    var color: String = "black"
    var buildDate = (12, 02, 2022)
    var price: Double = 5500000.00
    var accesories: [Accessories] = [.toning, .rugs, .mudFlaps]
    var isServiced: Bool = true
    var specialOffer: Bool = false
}

struct Honda: Car {
    
    var model: Model = Model.honda
    var color: String = "white"
    var buildDate = (25, 09, 2022)
    var price: Double = 4500000.00
    var accesories: [Accessories] = [.toning, .rugs, .mudFlaps]
    var isServiced: Bool = false
    var specialOffer: Bool = false

}

struct Audi: Car {
    
    var model: Model = Model.audi
    var color: String = "blue"
    var buildDate = (12, 04, 2022)
    var price: Double = 8500000.00
    var accesories: [Accessories] = [.toning, .rugs, .mudFlaps, .signaling]
    var isServiced: Bool = true
    var specialOffer: Bool = false

}

struct Lexus: Car {
    
    var model: Model = Model.lexus
    var color: String = "black night"
    var buildDate = (26, 07, 2022)
    var price: Double = 14999000.00
    var accesories: [Accessories] = [.toning, .rugs, .mudFlaps, .signaling]
    var isServiced: Bool = false
    var specialOffer: Bool = false

}

struct Volvo: Car {
    
    var model: Model = Model.volvo
    var color: String = "super white"
    var buildDate = (23, 02, 2023)
    var price: Double = 10500000.00
    var accesories: [Accessories] = [.toning, .rugs, .mudFlaps, .signaling]
    var isServiced: Bool = false
    var specialOffer: Bool = false

}

class DealerClass: DealershipProtocol {
    var name: DealershipName
    var tagline: String
    let showroomCapacity: Int
    var stockCars: Array<Car>
    var showroomCars: Array<Car>
    var car: [Car] {
        get {
            return stockCars + showroomCars
        }
        set {
            let stockCars = newValue.dropLast(showroomCars.count)
            let showroomCars = newValue.dropFirst(stockCars.count)
        }
    }
    
    init(name: DealershipName, tagline: String, showroomCapacity: Int, stockCars: [Car], showroomCars: [Car], car: [Car]) {
        self.name = name
        self.tagline = tagline
        self.showroomCapacity = showroomCapacity
        self.stockCars = stockCars
        self.showroomCars = showroomCars
//        self.car = car
    }
    
    func offerAccesories(_ accesories: [Accessories]) {
        print("Диллерский центр BMW предлагает приобрести дополниетльное оборудование к Вашему авто:")
        for i in accesories {
            print(i)
        }
    }
    
    func presaleService(_ car: inout Car) {
        car.isServiced = true
        print("Для автомобиля \(car.model) успешно пройдена предпродажная подготовка")
    }
    
    func addToShowroom(_ car: inout Car) {
        presaleService(&car)
        if stockCars.isEmpty {
            print("Нет автомобилей на парковке")
        } else {
            let newCar = stockCars[0]
            stockCars.removeFirst()
            showroomCars.append(newCar)
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
            var car = Bmw()
            car.isServiced = false
            stockCars.append(car)
            print("Добавлен автомобиль на парковку \(name.self)")
        } else if name == DealershipName.honda {
            var car = Honda()
            car.isServiced = false
            stockCars.append(car)
            print("Добавлен автомобиль на парковку \(name.self)")
        } else if name == DealershipName.audi{
            var car = Audi()
            car.isServiced = false
            stockCars.append(car)
            print("Добавлен автомобиль на парковку \(name.self)")
        } else if name == DealershipName.lexus {
            var car = Lexus()
            car.isServiced = false
            stockCars.append(car)
            print("Добавлен автомобиль на парковку \(name.self)")
        } else if name == DealershipName.volvo {
            var car = Volvo()
            car.isServiced = false
            stockCars.append(car)
            print("Добавлен автомобиль на парковку \(name.self)")
        }
    }
}


//Создадим дилерские центры
var bmwDealer = DealerClass(name: DealershipName.bmw, tagline: "С удовольствием за рулем", showroomCapacity: 50, stockCars: [], showroomCars: [], car: [])
var hondaDealer = DealerClass(name: DealershipName.honda, tagline: "Сначала человек, потом машина.", showroomCapacity: 55, stockCars: [], showroomCars: [], car: [])
var audiDealer = DealerClass(name: DealershipName.audi, tagline: "Продвижение через технологии", showroomCapacity: 109, stockCars: [], showroomCars: [], car: [])
var lexusDealer = DealerClass(name: DealershipName.lexus, tagline: "Неудержимое стремление к совершенству", showroomCapacity: 50, stockCars: [], showroomCars: [], car: [])
var volvoDealer = DealerClass(name: DealershipName.volvo, tagline: "Вольво для жизни", showroomCapacity: 50, stockCars: [], showroomCars: [], car: [])

//Массив, слоган
let dealerships = [bmwDealer, hondaDealer, audiDealer, lexusDealer, volvoDealer]
for dealer in dealerships {
    print("\(dealer.name) : \(dealer.tagline)")
    }

//Добавляем автомобили
var bmwAuto: Car = Bmw()
bmwDealer.orderCar()
bmwDealer.orderCar()
bmwDealer.showroomCars
bmwDealer.stockCars
bmwDealer.car
bmwDealer.addToShowroom(&bmwAuto)
bmwDealer.showroomCars
bmwDealer.stockCars
bmwDealer.car



var hondaAuto: Car = Honda()
hondaDealer.orderCar()
hondaDealer.orderCar()
hondaDealer.addToShowroom(&hondaAuto)

var audiAuto: Car = Audi()
audiDealer.orderCar()
audiDealer.orderCar()
audiDealer.addToShowroom(&audiAuto)

var lexusAuto: Car = Lexus()
lexusDealer.orderCar()
lexusDealer.orderCar()
lexusDealer.addToShowroom(&lexusAuto)

var volvoAuto: Car = Volvo()
volvoDealer.orderCar()
volvoDealer.orderCar()
volvoDealer.addToShowroom(&volvoAuto)

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

