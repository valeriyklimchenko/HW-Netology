//Task 1

enum Channel: String {
    case first = "First"
    case mtv = "MTV"
    case tnt = "TNT"
    case cityTVChannel = "City"
    case friday = "Friday"
}

class TV {
    var model: [String]
    var isEnable: Bool
    var channel: Channel
    init(model: [String], isEnable: Bool, channel: Channel) {
        self.model = model
        self.isEnable = true
        self.channel = channel
    }

    func whatIsOnTVNow() {
        if isEnable == true {
            print("Вы смотрите \(channel.rawValue)")
        } else {
            print("Черный экран")
        }
    }
}

var samsungTV = TV(model: ["Samsung", "43 QLED The Sero 4K TV LS05B"], isEnable: true, channel: Channel.first)

//samsungTV.whatIsOnTVNow()
//samsungTV.channel = Channel.friday
//samsungTV.whatIsOnTVNow()
//samsungTV.isEnable = false
//samsungTV.whatIsOnTVNow()



//Task 2

struct Settings {
    var volume: Int
    var isColorTV: Bool = true
}

enum ViewMode: String {
    case tvCannelMode = "Режим просмотра тв-каналов"
    case IncomingVideoPortMode = "Режим просмотра по входящему видео порту"
}

class TvWithSettings: TV {
    
    private var currentVolume: Int
    var settings: Settings {
        willSet {
            if newValue.volume > 100 {
                currentVolume = 100
            } else if newValue.volume < 0 {
                currentVolume = 0
            } else {
                currentVolume = newValue.volume
            }
        }
    }
    
    var viewMode: ViewMode

    init(settingss: Settings) {
        self.viewMode = ViewMode.tvCannelMode
        self.currentVolume = 30
        self.settings = Settings(volume: 30, isColorTV: true)
        super.init(model: ["Sony", "43 QLED The Sero 4K TV LS05B"], isEnable: true, channel: Channel.first)
    }
    
    override func whatIsOnTVNow() {
        
        if isEnable == false {
            super.whatIsOnTVNow()
        } else {
            print("Громкость \(currentVolume)")
            if settings.isColorTV == true {
                print("Цветное изображение")
            } else {
                print("Не цветное изображение")
            }
            if viewMode == ViewMode.tvCannelMode {
                super.whatIsOnTVNow()
            } else {
                print("Режим просмотра по входящему видео порту")
            }
        }
    }
    
}

var sonyTV = TvWithSettings(settingss: Settings(volume: 30, isColorTV: true))

//sonyTV.currentVolume = -999

//sonyTV.viewMode = ViewMode.IncomingVideoPortMode
sonyTV.viewMode = ViewMode.tvCannelMode

//sonyTV.isEnable = false
sonyTV.isEnable = true
sonyTV.settings.volume = 999
//sonyTV.settings.isColorTV = false

//sonyTV.isColor = true

sonyTV.whatIsOnTVNow()




