//Задание 1
let january = "январь"
let february = "февраль"
let march = "март"
let april = "апрель"
let may = "май"
let june = "июнь"
let july = "июль"
let august = "август"
let september = "сентябрь"
let october = "октябрь"
var november = "ноябрь"
let december = "декабрь"

var selectedMonth = october

if selectedMonth == january {
    print("В месяце \(selectedMonth) 16 рабочих дней")
}
else if selectedMonth == february {
    print("В месяце \(selectedMonth) 19 рабочих дней")
}
else if selectedMonth == march {
    print("В месяце \(selectedMonth) 22 рабочих дня")
}
else if selectedMonth == april {
    print("В месяце \(selectedMonth) 22 рабочих дня")
}
else if selectedMonth == may {
    print("В месяце \(selectedMonth) 22 рабочих дня")
}
else if selectedMonth == june {
    print("В месяце \(selectedMonth) 21 рабочий день")
}
else if selectedMonth == july {
    print("В месяце \(selectedMonth) 23 рабочих дня")
}
else if selectedMonth == august {
    print("В месяце \(selectedMonth) 23 рабочих дня")
}
else if selectedMonth == september {
    print("В месяце \(selectedMonth) 22 рабочих дня")
}
else if selectedMonth == october {
    print("В месяце \(selectedMonth) 23 рабочих дня")
}
else if selectedMonth == november {
    print("В месяце \(selectedMonth) 21 рабочий день")
}
else if selectedMonth == december {
    print("В месяце \(selectedMonth) 23 рабочих дня")
}
else {
    print("месяц не определен")
}

//Задание 2
selectedMonth = february

switch selectedMonth {
case january:
    print("В месяце \(selectedMonth) 16 рабочих дней")
case february:
    print("В месяце \(selectedMonth) 19 рабочих дней")
case march:
    print("В месяце \(selectedMonth) 22 рабочих дня")
case april:
    print("В месяце \(selectedMonth) 22 рабочих дня")
case may:
    print("В месяце \(selectedMonth) 22 рабочих дня")
case june:
    print("В месяце \(selectedMonth) 21 рабочий день")
case july:
    print("В месяце \(selectedMonth) 23 рабочих дня")
case august:
    print("В месяце \(selectedMonth) 23 рабочих дня")
case september:
    print("В месяце \(selectedMonth) 22 рабочих дня")
case october:
    print("В месяце \(selectedMonth) 23 рабочих дня")
case november:
    print("В месяце \(selectedMonth) 21 рабочий день")
case december:
    print("В месяце \(selectedMonth) 23 рабочих дня")
default:
    break
}

//Задание 3
var isHoliday: Bool = true

isHoliday ? print("Это выходной день") : print("Это рабочий день")

//Задание 4
enum selectedMonthWithEnum {
    case january
    case february
    case march
    case april
    case may
    case june
    case july
    case august
    case september
    case october
    case november
    case december
    var description: String {
        switch self {
        case .january: return "январь"
        case .february: return "февраль"
        case .march: return "март"
        case .april: return "апрель"
        case .may: return "май"
        case .june: return "июнь"
        case .july: return "июль"
        case .august: return "август"
        case .september: return "сентябрь"
        case .october: return "октябрь"
        case .november: return "ноябрь"
        case .december: return "декабрь"
        }
    }
}
print(selectedMonthWithEnum.september)
print(selectedMonthWithEnum.september.description)
