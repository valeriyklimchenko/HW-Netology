
//var transportStop = [
//    "first": 0,
//    "second": 7,
//    "third": 11,
//    "fourth": 19,
//    "fifth": 26,
//    "sixth": 35,
//    "seventh": 43
//]
//
//func timeCounting (from startStop: String, to finishStop: String) -> (Int, Bool)? {
//
//    if transportStop[startStop] == nil {
//        print("Неверно указан пункт отправления")
////        return nil
//    }
//    if transportStop[finishStop] == nil {
//        print("Неверно указан пункт назначения")
////        return nil
//    }
//
//    let travelTime = transportStop[finishStop]! - transportStop[startStop]!
//    return travelTime > 0 ? (travelTime, true): (-travelTime, false)
//
//}
//
//var travelTime1 = timeCounting(from: "second", to: "sith")
//print(travelTime1 ?? "")




var transportStop = [
    "first": 0,
    "second": 7,
    "third": 11,
    "fourth": 19,
    "fifth": 26,
    "sixth": 35,
    "seventh": 43
]

func timeCounting (from startStop: String, to finishStop: String) -> (Int, Bool)? {

    guard let startStop = transportStop[startStop] else {
        print("Неверно указан пункт отправления")
        return nil
    }
    guard let finishStop = transportStop[finishStop] else {
        print("Неверно указан пункт назначения")
        return nil
    }

    let travelTime = startStop - finishStop
    return travelTime > 0 ? (travelTime, false): (-travelTime, true)
}

var travelTime1 = timeCounting(from: "sixth", to: "second")
print(travelTime1 ?? "")
