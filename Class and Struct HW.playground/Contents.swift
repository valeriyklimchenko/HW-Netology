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

    var settings = Settings(volume: 30, isColorTV: true)
    var viewMode: ViewMode

    init() {
        self.viewMode = ViewMode.tvCannelMode
        super.init(model: ["Sony", "43 QLED The Sero 4K TV LS05B"], isEnable: true, channel: Channel.first)
    }
    
    func changeVolume(_ volume: Int = 30) {
        if volume > 100 {
            settings.volume = 100
        } else if  volume < 0 {
            settings.volume = 0
        } else {
            settings.volume = volume
        }
    }
    
    override func whatIsOnTVNow() {
        
        if isEnable == false {
            super.whatIsOnTVNow()
        } else {
            print("Громкость \(settings.volume)")
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

var sonyTV = TvWithSettings()//(Settings(volumeControl: [0], isColorTV: false))

sonyTV.changeVolume(86)

//sonyTV.viewMode = ViewMode.IncomingVideoPortMode
sonyTV.viewMode = ViewMode.tvCannelMode

//sonyTV.isEnable = false
sonyTV.isEnable = true

//sonyTV.settings.isColorTV = false

//sonyTV.isColor = true

sonyTV.whatIsOnTVNow()




