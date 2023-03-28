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
    var maxVolume: Int = 100
    var isColor: Bool = true
    var viewMode: ViewMode

    init() {
        self.currentVolume = 30
        self.viewMode = ViewMode.tvCannelMode
        super.init(model: ["Sony", "43 QLED The Sero 4K TV LS05B"], isEnable: true, channel: Channel.first)
    }
    
    func changeVolume(_ volume: Int = 30) {
        if volume > currentVolume {
            currentVolume = 100
        } else if  volume < 0 {
            currentVolume = 0
        } else {
            currentVolume = volume
        }
    }
    
    override func whatIsOnTVNow() {
        
        if isEnable == false {
            super.whatIsOnTVNow()
        } else {
            print("Громкость \(currentVolume)")
            if isColor == true {
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

sonyTV.changeVolume(9999)

//sonyTV.viewMode = ViewMode.IncomingVideoPortMode
sonyTV.viewMode = ViewMode.tvCannelMode

//sonyTV.isEnable = false
sonyTV.isEnable = true

sonyTV.isColor = false
//sonyTV.isColor = true

sonyTV.whatIsOnTVNow()




