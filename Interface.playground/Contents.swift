//Задача 1
class Restaurant {
    var price: Double {
        get {
            return self.price
        }
    }
    var makeAnOrder: String {
        get {
            return self.makeAnOrder
        }
        set {
            newValue
        }
    }
    func guestBook() {}
    func cardPayment() {}
}
/*
Класс Ресторан - Публичный именованный тип, потому что любой человек может посетить, сделать заказ
Публичный метод: попросить книгу отзывов
Приватный метод: оплата картой
Геттер: узнать цену, узнать что уже в заказе
Сеттер: заказать
 */

//Задача 2
//Использую перегрузку методов. Методы имеют одинаковые имена но разные типы данных, swift сам решает какой метод использовать.

//Метод print называется так же как команда print, вроде так можно делать, но я не уверен
class Printer {
    func printText(_ result: Int) {
        print(result)
    }
    func printText(_ result: Double) {
        print(result)
    }
    func printText(_ result: Bool) {
        print(result)
    }
    func printText(_ result: String) {
        print(result)
    }
    func printText(_ result: Character) {
        print(result)
    }
}
Printer().printText("0.2")
Printer().printText("hello")

//Задача 3
class Planet {
    func orbiting() {
        print("Абстрактная планета вращается по орбите так")
    }
}

class Earth: Planet {
    override func orbiting() {         //Переопределяю метод
        print("Земля вращается по орбите так")
        super.orbiting()               //Вызываю родительский метод
        print("Абстрактная планета вращается по орбите так")
    }
}

var earthOrbiting = Earth()
earthOrbiting.orbiting()

