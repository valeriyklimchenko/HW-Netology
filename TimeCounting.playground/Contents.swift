
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
        return nil
    }
    if transportStop[finishStop] == nil {
        print("Неверно указан пункт назначения")
        return nil
    }

    let travelTime = transportStop[finishStop]! - transportStop[startStop]!
    return travelTime > 0 ? (travelTime, true): (-travelTime, false)

}

var travelTime1 = timeCounting(from: "second", to: "sith")
print(travelTime1 ?? "")

