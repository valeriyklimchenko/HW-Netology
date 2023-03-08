
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

    if transportStop[startStop] == nil {
        print("Неверно указан пункт отправления")
        if transportStop[finishStop] == nil {
            print("Неверно указан пункт назначения")
        }
        return nil
    }
    if transportStop[finishStop] == nil {
        print("Неверно указан пункт назначения")
        return nil
    }

    let travelTime = transportStop[finishStop]! - transportStop[startStop]!
    return travelTime > 0 ? (travelTime, true): (-travelTime, false)

}

print(timeCounting(from: "s????econd", to: "six?????th") as Any)

print(timeCounting(from: "second", to: "sixth") as Any)

