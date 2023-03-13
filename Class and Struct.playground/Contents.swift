//import Darwin
//import CoreGraphics
//import Foundation

class TV {
    let model: String = "Samsung"
    var Enable: Bool = true
    //    var currentChannal: String
    init(Enable:Bool){
        self.Enable = Enable
    }
}

enum Channel: Int {
    case first
    case mtv
    case tnt
    case cityChannal
    case friday
}

var channel = Channel.friday
print(channel.rawValue)
//    var channel = Channel(rawValue: 3)
//    switch channel {
//    case .tnt:
//        print()
//    default:
//        print()
//        }
        //    switch Channel {
        //    case 0:
        //        self = .first
        //    case 1:
        //        self = .mtv
        //    case 2:
        //        self = .tnt
        //    case 1:
        //        self = .cityChannal
        //    case 1:
        //        self = .friday
        //    }



        //    func whatIsOnTVNow() {
        //        let channel = Channel.allCases.randomElement()!
