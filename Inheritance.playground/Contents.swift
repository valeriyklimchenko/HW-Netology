enum Country {
    case usa, russia, GB, france, finland
}

enum Genre {
    case rock, opera, pop
}

class Artist {
    
    let name: String
    let country: Country
    let genre: Genre
    
    init(name: String, country: Country, genre: Genre) {
        self.name = name
        self.country = country
        self.genre = genre
    }
    
    func whriteTrack(_ trackName: String) {
        print("\(self.name) just write \("trackName")")
    }
    
    func playTrack(_ trackName: String) {
        print("\(self.name) playing \("trackName")")
    }
}

final class RockArtist: Artist {

    override func whriteTrack(_ trackName: String) {
        print("Rock-artist \(self.name) play rock-n-roll")
    }
}



final class StreetArtist: Artist {
    
    let isUnderRoof: Bool
    
    init(isUnderRoof: Bool, name: String, country: Country, genre: Genre) {
        self.isUnderRoof = isUnderRoof
        super.init(name: name, country: country, genre: genre)
    }
    
    override func playTrack(_ trackName: String) {
        if isUnderRoof {
            print("\(self.name) playing \("trackName") in the rain")
        } else {
            print("\(self.name) playing \("trackName")")
        }
    }
    
}


final class TheaterArtist: Artist {
    
    let isBoring: Bool
    
    override init(name: String, country: Country, genre: Genre) {
        self.isBoring = true
        super.init(name: name, country: country, genre: genre)
    }
    
    override func playTrack(_ songName: String) {
        if isBoring {
            print("the audience falls asleep")
        } else {
            print("\(self.name) playing \(songName)")
        }
    }
}
var array = [Artist]()
let tarjaTurunen = RockArtist(name: "tarjaTurunen", country: Country.finland, genre: Genre.rock)
let operaSinger = TheaterArtist(name: "operaSonger", country: Country.russia, genre: Genre.opera)
let streetSonger = StreetArtist(isUnderRoof: false, name: "streetSonger", country: Country.usa, genre: Genre.pop)
array.append(tarjaTurunen)
array.append(operaSinger)
array.append(streetSonger)
array
//Тут все просто. В задании с треками разобрался с созданием классов, их наследованием, переопределением методов и свойств, инициализацией (когда надо, когда не надо, как использовать супер инит). Повторил что такое словари и массивы, вспомнил как получать доступ к элементам и добавлять/удалять их. Применил перечисления на практике
