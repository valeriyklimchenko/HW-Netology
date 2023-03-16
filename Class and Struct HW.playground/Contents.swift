//Task 1

class TV {
    let model: [String]
    var Enable: Bool = true
    var channel: Channel
    init(model: [String], Enable: Bool, channel: Channel) {
        self.model = model
        self.Enable = Enable
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
    
    var volumeControl: Array = [0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1]
    var isColorTV: Bool = false
    
//    var currentVolume = volumeControl[5]

}

class tvWhithSetings: TV {

    var setting = Settings()
    
    init() {}
    init(setting: Settings) {
        self.setting = setting
    }
    
    var volume = setting.volumeControl[5]
//    var currentVolume: Double = Settings().volumeControl[5]
    
//    init(currentVolume: [Double]) {
//        self.currentVolume = currentVolume
//    }
    
    print(volume)
    
    func onOffVolume(_ isSound: Bool = true) -> Double {
        if isSound == true {
            return 0.5
        } else {
            return 1
        }
    }
}

//tvWhithSetings().setting.isColorTV
var sonyTV = tvWhithSetings(model: ["Sony", "KD-55X85K"], Enable: true, channel: tvWhithSetings.Channel.cityTVChannel)

sonyTV.setting.isColorTV = true
//print(sonyTV.setting.isColorTV)

sonyTV.whatIsOnTVNow()
sonyTV.channel = tvWhithSetings.Channel.mtv
sonyTV.whatIsOnTVNow()




