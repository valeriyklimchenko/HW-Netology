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
            print("ВЫ смотрите \(channel.rawValue)")
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
    var volume: Array<Double> = [0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1]
    var isColorTV: Bool = true
}

enum ViewMode: String {
    case tvCannelMode = "Режим просмотра тв-каналов"
    case IncomingVideoPortMode = "Режим просмотра по входящему видео порту"
}

class TvWithSettings: TV {

    var settings = Settings(volumeControl: [5], isColorTV: true)
    var isColor = Settings().isColorTV
    var viewMode: ViewMode
    private var currentVolume = Settings().volumeControl[5]

    init() {
        self.settings = Settings(volumeControl: [5], isColorTV: true)
        self.viewMode = ViewMode.tvCannelMode
        super.init(model: ["Sony", "43 QLED The Sero 4K TV LS05B"], isEnable: true, channel: Channel.first)
    }
    
    var currentVolume = volumeControl[5]
//    super.init(currentVolume: Double) {
//        self.currentVolume = currentVolume
//    }
    
//    print(currentVolume)
    func turnUpTheVolume() {
        
        if isEnable == true {
            let index = Settings().volumeControl.firstIndex(of: currentVolume)
            if index! < Settings().volumeControl.endIndex - 1 {
                currentVolume = Settings().volumeControl[index! + 1]
                print("Вы увеличили громкость, уровень громкости \(currentVolume)")
            } else {
                print("Максимальная громкость \(Settings().volumeControl[Settings().volumeControl.endIndex - 1])")
            }
        }
    }
    
    func turnDounTheVolume() {
        
        if isEnable == true {
            let index = Settings().volumeControl.firstIndex(of: currentVolume)
            if index! > Settings().volumeControl.startIndex {
                currentVolume = Settings().volumeControl[index! - 1]
                print("Вы уменьшили громкость, уровень громкости \(currentVolume)")
            } else {
                print("Звук выключен")
            }
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

var sonyTV = TvWithSettings()//(Settings(volumeControl: [0], isColorTV: false))

//sonyTV.viewMode = ViewMode.IncomingVideoPortMode
sonyTV.viewMode = ViewMode.tvCannelMode

//sonyTV.isEnable = false
sonyTV.isEnable = true

sonyTV.isColor = false
//sonyTV.isColor = true

//sonyTV.turnUpTheVolume()

sonyTV.whatIsOnTVNow()

//sonyTV.turnUpTheVolume()
//sonyTV.turnUpTheVolume()
//sonyTV.whatIsOnTVNow()
//sonyTV.turnUpTheVolume()
//sonyTV.turnUpTheVolume()
//sonyTV.turnUpTheVolume()
//sonyTV.turnUpTheVolume()
//sonyTV.whatIsOnTVNow()
//sonyTV.turnUpTheVolume()
//sonyTV.whatIsOnTVNow()
//sonyTV.turnUpTheVolume()
//
//sonyTV.turnDounTheVolume()
//sonyTV.turnDounTheVolume()
//sonyTV.turnDounTheVolume()
//sonyTV.turnDounTheVolume()
//sonyTV.turnDounTheVolume()
//sonyTV.turnDounTheVolume()
//sonyTV.turnDounTheVolume()
//sonyTV.turnDounTheVolume()
//sonyTV.turnDounTheVolume()
//sonyTV.turnDounTheVolume()
//sonyTV.turnDounTheVolume()
//sonyTV.turnDounTheVolume()



