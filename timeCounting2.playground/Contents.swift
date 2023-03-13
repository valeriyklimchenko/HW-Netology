let station: [String: Int] = ["Kotelniky" : 0,
                              "Zhulebino" : 4,
                              "Kosino" : 8,
                              "Vihino" : 10,
                              "Ryazanka" : 15,
                              "Tekstilshiky" : 19,
                              "Taganka" : 24]

func travelTime (from startPoint: String, to finishPoint: String) -> Int {

    guard let timeToFirstStation = station[startPoint] else {
        print("Start station is't correct")
        return 0
    }
    guard let timeToSecondStation = station[finishPoint] else {
        print("Finish station is't correct")
        return 0
    }

    let totalTime = timeToSecondStation - timeToFirstStation
    return totalTime > 0 ? totalTime : -totalTime
}

print("Total time: ", travelTime(from: "Taganka", to: "Vihino"), " min.")
