//Task 1
var informationAboutOneOfMyFriends = (favouriteFilm: "Титаник", favoutiteNumber: 7, favouriteDish: "Лазанья")

let(favouriteFilm, favoutiteNumber, favouriteDish) = informationAboutOneOfMyFriends

var informationAboutMe = (favouriteFilm: "Сломанная стрела", favoutiteNumber: 13, favouriteDish: "Суп")

var saveInformationAboutMe  = informationAboutMe
informationAboutMe = informationAboutOneOfMyFriends
informationAboutOneOfMyFriends = saveInformationAboutMe

informationAboutMe
informationAboutOneOfMyFriends

var newTuple = (informationAboutOneOfMyFriends.favoutiteNumber, informationAboutMe.favoutiteNumber, informationAboutOneOfMyFriends.favoutiteNumber - informationAboutMe.favoutiteNumber)

newTuple



//Task 2

let dayBook = ["studentName": ["Chemistry", 5, "Elena Alekseevna"]]



//Task 3
print("Task3")
typealias Chessman = [String: (Alpha: Character, number: Int)?]

var chessman: Chessman = [
    "White horse": ("A", 5),
    "White King ": ("D", 9),
    "Black queen": ("F", 3),
    "Black paun": ("C", 6),
    "Black paun 1": (nil)   //В словаре все ключи уникальны, поэтомы мы не можем указать два одинаковых ключа
]

var value = chessman["Black paun 1"]

if let v = value {
    print("Фигура убита")
} else {
    print("Координаты фигуры \(value!!)")
}



//Task 4
print("Task4")

for key in chessman.keys {
    if chessman[key]! == nil {
        print("Фигура '\(key)' убита")
    } else {
        print("Координаты фигуры '\(key)' \(value!!)")
    }

}


