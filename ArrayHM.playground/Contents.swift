//Задание 1
var boysArray = ["Vasia", "Misha"]
var girlsArray = ["Sveta", "Sasha", "Olga"]
var studens = [String]()
studens += girlsArray
for boys in boysArray {
    studens.insert(boys, at: 0)
}
studens

//Задание 2
studens.sort(by: <)

//Задание 3
var allProductRatings = [9, -3, 6, 10, -4, 1, 0, -3, 8, 7, 5]
allProductRatings.sort()
var sortAllProductRatings = allProductRatings
sortAllProductRatings
//var positiveProductRatings = sortAllProductRatings.drop(while: {$0 < 0})

//Если используем filter, то сортировка не обязательна
var positiveProductRatings = allProductRatings.filter({$0 >= 0})
positiveProductRatings

//Задание 4
var array = [1, 2, 3, 4, 7, 8, 15]
//array.sort(by: <)

var startIndex = 0
var finishIndex = array.endIndex - 1

//принцим решения где то подсмотрел, где уже не помню, давно это было
//если массив изначально не будет отсортирован по возрастанию, то когда я его отсортирую и засуну его в конструкцию ниже, то я найду индексы отсортированного массива. Подскажите пожалуйста, как найти индексы изначального неотсортированного массива. Или тогда только полным перебором решать?

for _ in array {
    if startIndex != finishIndex {
        var summ = array[startIndex] + array[finishIndex]
        if summ < 6 {
            startIndex += 1
        }; if summ > 6 {
            finishIndex -= 1
        }; if summ == 6 {
            print("Числа \(array[startIndex]) и \(array[finishIndex]) в сумме дают 6 и имеют индексы \(startIndex) и \(finishIndex) соответственно")
            break
        }
    }
    else {
        print("в массиве нет чисел, дающих в сумме 6")
    }
}


//Метод полного перебора

var arrayFull = [1, 2, 3, 4, 7, 8, 15]

var elementsQuantity = arrayFull.endIndex

var firstIndex = 0
var secondIndex = 0

for n in arrayFull {

    for m in arrayFull {

        var summ = n + m

        if summ == 6{
            print(firstIndex, secondIndex)
        }

    secondIndex += 1
    }
    firstIndex += 1
    secondIndex = 0
}


