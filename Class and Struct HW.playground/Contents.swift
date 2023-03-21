//Task 1

class TV {
    var model: [String]
    var Enable: Bool = true
    var channel: Channel
    init(model: [String], Enable: Bool, channel: Channel) {
        self.model = model
//        self.Enable = Enable
        self.channel = channel
    }

    enum Channel: String {
        case first = "First"
        case mtv = "MTV"
        case tnt = "TNT"
        case cityTVChannel = "City"
        case friday = "Friday"
    }

    func whatIsOnTVNow() {
        if Enable == true {
            print("TV channel \(channel.rawValue)")
        } else {
            print("Black screen")
        }
    }
}

var samsungTV = TV(model: ["Samsung", "43 QLED The Sero 4K TV LS05B"], Enable: true, channel: TV.Channel.first)

//samsungTV.whatIsOnTVNow()
//samsungTV.channel = TV.Channel.friday
//samsungTV.whatIsOnTVNow()
//samsungTV.Enable = false
//samsungTV.whatIsOnTVNow()



//Task 2

struct Settings {
    var volume: Array<Double> = [0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1]
    var isColorTV: Bool = true
}

class tvWhithSetings: TV {

    var settings = Settings()
    var color = Settings().isColorTV
    var volumeControl = Settings().volume
    init(settings: Settings) {
        self.settings = settings
//        self.color = color
//        self.volumeControl = volumeControl
        super.init(model: ["Sony", "43 QLED The Sero 4K TV LS05B"], Enable: true, channel: TV.Channel.friday)
    }
    
    var currentVolume = volumeControl[5]
//    super.init(currentVolume: Double) {
//        self.currentVolume = currentVolume
//    }
    
//    print(currentVolume)
    func turnUpTheVolume() {
        let index = settings.volumeControl.firstIndex(of: currentVolume)
        if index! < settings.volumeControl.endIndex - 1 {
            currentVolume = settings.volumeControl[index! + 1]
            print("Вы увеличили громкость, уровень громкости \(currentVolume)")
        } else {
            print("Максимальная громкость \(settings.volumeControl[settings.volumeControl.endIndex - 1])")
        }
    }
    
    func turnDounTheVolume() {
        let index = settings.volumeControl.firstIndex(of: currentVolume)
        if index! > settings.volumeControl.startIndex {
            currentVolume = settings.volumeControl[index! - 1]
            print("Вы уменьшили громкость, уровень громкости \(currentVolume)")
        } else {
            print("Звук выключен")
        }
    }
    
    override func whatIsOnTVNow() {
        
        color = Settings().isColorTV
        if color == true {
            print("цветной")
        } else {
            print("черно-белый")
        }
    }
    
//        print(currentVolume)
    
}

var sonyTV = tvWhithSetings(settings: Settings(), model: ["Sony", "43 QLED The Sero 4K TV LS05B"], Enable: true, channel: TV.Channel.friday)


sonyTV.whatIsOnTVNow()
//sonyTV.turnDounTheVolume()
//sonyTV.turnDounTheVolume()
//sonyTV.turnDounTheVolume()
//sonyTV.turnDounTheVolume()
//sonyTV.turnDounTheVolume()
//sonyTV.turnDounTheVolume()

//turnUpTheVolume()
//turnUpTheVolume()
//turnUpTheVolume()
//turnUpTheVolume()
//turnUpTheVolume()
//turnUpTheVolume()
//turnUpTheVolume()









//class tvWhithSetings: TV {
//
//    var settings = Settings()
//
//    func onOffVolume(_ isSound: Bool = true) -> Double {
//        if isSound == true {
//            return 0.5
//        } else {
//            return 1
//        }
//    }
//}
//
////tvWhithSetings().setting.isColorTV
//var sonyTV = tvWhithSetings(model: ["Sony", "KD-55X85K"], Enable: true, channel: tvWhithSetings.Channel.cityTVChannel)
//
////sonyTV.setting.isColorTV = true
////print(sonyTV.setting.isColorTV)
//
//sonyTV.whatIsOnTVNow()
//sonyTV.channel = tvWhithSetings.Channel.mtv
//sonyTV.whatIsOnTVNow()

//print(tvWhithSetings(model: ["23"], Enable: true, channel: tvWhithSetings.Channel.cityTVChannel))
