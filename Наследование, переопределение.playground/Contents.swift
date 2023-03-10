
//Наследование - возможность одного класса (подкласс, субкласс, дочерний) принимать свойства, методы и остальные характеристики другого класса (суперкласс, базовый, родительский)
//Базовый класс - любой класс, который не наследует из другого класса, у которого не указан суперкласс и может использоваться для строительства новых классов

class SomeSuperClass {

}

class SomeSubClass: SomeSuperClass {
    // тело сабкласса
}

//Переопределение наследуемых элементов
//Переопределение - реализация сабклассом собственных свойств и методов, наследованных от суперкласса. Переопределенный метод знает только имч и список входных параметров родительского метода

//SOLID, принцип Барбары Лисков - сабкласс не должен нарушать контракт родительского класса (типы входных и выходных параметров). Дочерний класс может только расширить функциональность базового класса

class BaseClass {

    func baseMetod() {
        print("Заливаем бетон")
    }

}

class ChildClass: BaseClass {

    override func baseMetod() {
        super.baseMetod()
        print("и кладем арматуру")
    }
}

//Доступ к переопределенным элементам осуществляется при помощи конструкции super.
class Counter {
    var countStart: Int {
        return 0
    }
}

class OneCounter: Counter {
    override var countStart: Int {
        return super.countStart + 1
    }
}
Counter().countStart
OneCounter().countStart

//Переопределение инициализаторов
//Наследуемый инициализатор может быть использован для создания экземпляра подкласса, если в подклассе не отличается набор свойств, требующих установки. Если новые входные параметры - то создается новый инициализатор
//Кдасс должен или объявить свой обязательный инициализатор или унаследовать его. Если подкласс имеет свой инициализатор, то инициализаторы родительского не наследуются

class ShortName {
    var firstName1: String
    var familyName: String
    init(firstName: String, familyName: String) {
        self.firstName1 = firstName
        self.familyName = familyName
    }
}

class FullName: ShortName {
    var middleName: String
    init(firstName1: String, familyName: String, middleName: String) {
        self.middleName = middleName
        super.init(firstName: firstName1, familyName: familyName)
    }
}

//Переопределение наследуемых свойств
//Можно только расширить функционал, но не наоборот (был гетер, стал гетер и сетер)
//Хранимые свойства не наследуются
//Нужно всегда указывать имя и тип переопределяемого свойства

//Модификатор final позволяет защитить реализацию класса (наследование невозможно) или его элементов (возможно наследование, но не переопределение













