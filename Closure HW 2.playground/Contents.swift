//Task1
let satelliteWeight: Double = 333
let flightLenght = 999.999

func calculateFuelConsumption(satelliteWeight: Double, flightLenght: Double, algoritm: (Double, Double) -> Double) -> Double {
    return algoritm(satelliteWeight, flightLenght)
}

let firstAlgoritm = { (m: Double, d: Double) -> Double in return m * d * 1.340716 }
let secondAlgoritm = { (m: Double, d: Double) -> Double in return m * d * 1.234716 }

calculateFuelConsumption(satelliteWeight: satelliteWeight, flightLenght: flightLenght, algoritm: firstAlgoritm)
calculateFuelConsumption(satelliteWeight: satelliteWeight, flightLenght: flightLenght, algoritm: secondAlgoritm)

//Task2

let firstShortAlgoritm = { $0 * $1 * 1.340716}
let secondShortAlgoritm = { $0 * $1 * 1.234716}
calculateFuelConsumption(satelliteWeight: satelliteWeight, flightLenght: flightLenght, algoritm: firstAlgoritm)
calculateFuelConsumption(satelliteWeight: satelliteWeight, flightLenght: flightLenght, algoritm: secondAlgoritm)


//Task3

let myAlgoritm = calculateFuelConsumption(satelliteWeight: 333, flightLenght: 999.999) { $0 * $1 * 1.48573829 / 2 }

let example = {
    calculateFuelConsumption(satelliteWeight: satelliteWeight, flightLenght: flightLenght) { ($0 * $1) + 100 }
}

let example2 = calculateFuelConsumption(satelliteWeight: satelliteWeight, flightLenght: flightLenght) { ($0 * $1) + 100 }


print(myAlgoritm)




