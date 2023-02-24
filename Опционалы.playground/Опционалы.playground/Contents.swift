//Задача 1
var a: String? = "text"
var b: String? = "string"
var c: String? = nil
print(a ?? nil, b ?? nil, c ?? nil, separator: "\n")

c = "текст переменной c"
print(c ?? nil)
//Разница в выводе переменной только в том, что выведос значение, которое мы присвоили

var d: String? = "10"
var e: String? = "1sdf0"
var f: String? = "10cdfd"
var g: String? = "10"
var h: String? = "10"

var summ = 0
if var d, var d = Int(d) {
    summ += d
}; if var e, var e = Int(e) {
    summ += e
}; if var f, var f = Int(f) {
    summ += f
}; if var g, var g = Int(g) {
    summ += g
}; if var h, var h = Int(h) {
    summ += h
}

print("Cумма чисел равна \(summ)")

//Задача 2

var temperature: Int? = Int("-16")
var t = Int(temperature ?? -300)

if t < -45 {
    print("Значение температуры указано некорректно")
} else if temperature! > 30 {
    print("Жара")
} else if t > 15 {
    print("Тепло")
} else if t > 0 {
    print("Прохладно")
} else if t > -20 {
    print("Холодно")
} else if t > -30 {
    print("Дубак")
} else if t >= -45 {
    print("Жуткий холод")
}

