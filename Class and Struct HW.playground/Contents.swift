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

    enum Channel {
        case first
        case mtv
        case tnt
        case cityChannal
        case friday
    }

    func whatIsOnTVNow() {
        if Enable == true {
            print("TV channel \(channel)")
        } else {
            print("Black screen")
        }
    }
}

var samsungTV = TV(model: ["Samsung", "43 QLED The Sero 4K TV LS05B"], Enable: true, channel: TV.Channel.first)

samsungTV.whatIsOnTVNow()
samsungTV.channel = TV.Channel.friday
samsungTV.whatIsOnTVNow()
samsungTV.Enable = false
samsungTV.whatIsOnTVNow()



//Task 2








