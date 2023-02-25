//Задание 1
class TV {

    let model: String
    var isEnable: Bool
    var channel: Channel

    init(model: String, isEnable: Bool, channel: Channel) {
        self.model = model
        self.isEnable = isEnable
        self.channel = channel
    }

    enum Channel: String {
        case first = "Первый"
        case mtv = "MTV"
        case tnt = "ТНТ"
        case cityChannal = "Городской"
        case friday = "Пятница"
    }

    func currentChannel(channel: Channel) {
        if isEnable == true {
            print("Вы смотрите телеканал \(channel.rawValue)")
        } else {
            print("Телевизор сейчас выключен")
        }
    }

    func whatIsOnTVNow(whatIsTV: String = "Орел и решка") {
        if isEnable == true {
            print(whatIsTV)
        } else {
            print("Телевизор сейчас выключен")
        }
    }
}



let tv = TV(model: "Samsung", isEnable: true, channel: .friday)
//tv.currentChannel(channel: .friday)
//tv.whatIsOnTVNow()
//
//tv.whatIsOnTVNow(whatIsTV: "Какая то передача")
//
//tv.isEnable = false
//tv.whatIsOnTVNow()



//Задание 2

struct Settings {
    var isBlackAndWight: Bool = false
//    var volume: Double

    func volume(vol: inout Double) {
        if vol > 1 {
            vol = 1
        };if vol < 0 {
            vol = 0
        } else {
            vol
        }
    }
}

class TVWithSrttings {

    var colorTV = Settings(isBlackAndWight: false)
    
    let model: String
    var isEnable: Bool
    var channel: Channel
//    var v = Settings()


//    var volume: Settings = vol

    init(model: String, isEnable: Bool, channel: Channel) {
        self.model = model
        self.isEnable = isEnable
        self.channel = channel
    }

    enum Channel: String {
        case first = "Первый"
        case mtv = "MTV"
        case tnt = "ТНТ"
        case cityChannal = "Городской"
        case friday = "Пятница"
    }

    func currentChannel(channel: Channel) {
        if isEnable == true {
            print("Вы смотрите телеканал \(channel.rawValue)")
        } else {
            print("Телевизор сейчас выключен")
        }
    }

    func whatIsOnTVNow(whatIsTV: String = "Орел и решка") {
        if isEnable == true {
            print(whatIsTV)
        } else {
            print("Телевизор сейчас выключен")
        }
    }
}
