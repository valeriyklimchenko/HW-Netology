protocol Home {
    func reside()
    func sleep()
    func relax()
    var floorCount: Int {get}
    var entranceCount: Int {get}
}

class ApartmentHouse {
    func reside() {}
    func sleep() {}
    func relax() {}
    var floorCount: Int = 5
    var entranceCount: Int = 1
}

struct HouseSize {
    let width: Double = 13
    let length: Double = 45
    let hight: Double = 14.5
}


enum AppartmensOnFloor {
    case firstFloor(Int)
    case secondFloor
}
let appartmensOnFloor = AppartmensOnFloor.secondFloor
switch appartmensOnFloor {
case .firstFloor(let count):
    print("on this floor there are apartments number 1, 2, 3, 4", count)
case .secondFloor:
    print("on this floor there are apartments number 5, 6, 7, 8")
}

/*
Агрегация
Ярлыки на рабочем столе компьютера. При их удалении сами объекты остаются
Чек из магазина содержит (ссылается на) список купленных товаров. Чек можно выкинуть, товары останутся.
Конспекты в тетрди ссылаются на пройденный материал. Потеря тетради не приведет к потере знаний

Композиция
Живая клетка состоит из органелл. Если клетка погибает, погибают и ее органеллы: митохондрии, ядро, рибосомы, вакуоли ...
Макбук включает в себя следующие компоненты: процессор, память, видеокарта, материнка, SSD-виск и другие компоненты. Существование этих объектов вне макбука не имеет смысла
Гвозди, с помощью которых строится деревянный дом
*/
