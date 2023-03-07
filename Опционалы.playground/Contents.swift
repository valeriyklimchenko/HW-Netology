//Задача 1.1
var firstVar: String? = "text"
var secondVar: String? = "string"
var nilVar: String? = nil
print(firstVar ?? " ", secondVar ?? " ", nilVar ?? " ", separator: "\n")

nilVar = "текст переменной c"
print(nilVar as Any)
//Разница в выводе переменной только в том, что выведос значение, которое мы присвоили

//Задача 1.2
let nomberOfViewsYesterday: String = "3729"
let userName: String = "Vasia89"
let userPasword: String = "q29er58tghf943"
let nomberOfViewsDayBeforeYesterday: String = "6201"
let nomberOfViewsToday: String = "4916"

var summOptionalBinding = 0

if var nomberOfViewsYesterday = Int(nomberOfViewsYesterday) {
    summOptionalBinding += nomberOfViewsYesterday
}
if var userName = Int(userName) {
    summOptionalBinding += userName
}
if var userPasword = Int(userPasword) {
    summOptionalBinding += userPasword
}
if var nomberOfViewsDayBeforeYesterday = Int(nomberOfViewsDayBeforeYesterday) {
    summOptionalBinding += nomberOfViewsDayBeforeYesterday
}
if var nomberOfViewsToday = Int(nomberOfViewsToday) {
    summOptionalBinding += nomberOfViewsToday
}

print("Cумма чисел при использовании неявного извлечения опционала равна \(summOptionalBinding)")



summForcedUnwrapping = 0

var summForcedUnwrapping = 0
if Int(nomberOfViewsYesterday) != nil {
    summForcedUnwrapping += Int(nomberOfViewsYesterday)!
}
if Int(userName) != nil {
    summForcedUnwrapping += Int(userName)!
}
if Int(userPasword) != nil {
    summForcedUnwrapping += Int(userPasword)!
}
if Int(nomberOfViewsDayBeforeYesterday) != nil {
    summForcedUnwrapping += Int(nomberOfViewsDayBeforeYesterday)!
}
if Int(nomberOfViewsToday) != nil {
    summForcedUnwrapping += Int(nomberOfViewsToday)!
}

print("Cумма чисел при использовании принудительного извлечения опционала равна \(summForcedUnwrapping)")


//Задача 2

var temperature: Int? = Int("-18")
var currentTemperature = Int(temperature ?? -300)

if currentTemperature < -45 {
    print("Значение температуры указано некорректно")
} else if currentTemperature > 90 {
    print("Значение температуры указано некорректно")
} else if currentTemperature > 30 {
    print("Жара")
} else if currentTemperature > 15 {
    print("Тепло")
} else if currentTemperature > 0 {
    print("Прохладно")
} else if currentTemperature > -20 {
    print("Холодно")
} else if currentTemperature > -30 {
    print("Дубак")
} else if currentTemperature >= -45 {
    print("Жуткий холод")
}


