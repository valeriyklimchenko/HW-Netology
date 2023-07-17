enum Country {
    case usa, russia, GB, france, finland
}

enum Genre {
    case rock, opera, pop, errorGenre
}

class Artist {
    
    var name: String
    var country: Country
    var genre: Genre
    
    init(name: String, country: Country, genre: Genre) {
        self.name = name
        self.country = country
        self.genre = genre
    }
    
    func whriteTrack(_ trackName: String) {
        print("\(self.name) write music")
    }
    
    func playTrack(_ trackName: String) {
        print("\(self.name) playing music")
    }
}

//var artist = Artist(name: "Artist", country: Country.GB, genre: Genre.opera)
//artist.whriteTrack("New Track")
//artist.playTrack("New Track")



final class RockArtist: Artist {
    
    override var genre: Genre {
        get { Genre.rock }
        set { print(Genre.rock) }
    }
    
    var longHair: Bool
    
    override init(name: String, country: Country, genre: Genre) {
        self.longHair = true
        super.init(name: name, country: country, genre: genre)
    }
    
    override func playTrack(_ trackName: String) {
        print("Rock-artist \(self.name) play rock-n-roll")
    }
    
    override func whriteTrack(_ trackName: String) {
        print("\(self.name) just write \(trackName)")
    }
    
    func playLoudMusicOnStage() {
        print("We play loud music on stage")
    }
    
}


var rockArtist = RockArtist(name: "", country: Country.GB, genre: Genre.errorGenre)
rockArtist.playTrack("New Track")
rockArtist.whriteTrack("New Track")
rockArtist.genre
rockArtist.playLoudMusicOnStage()


final class StreetArtist: Artist {
    
    let isUnderRoof: Bool
    
    override var genre: Genre {
        get { Genre.pop }
        set { print(Genre.pop) }
    }
    
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
    
    override func whriteTrack(_ trackName: String) {
        print("\(self.name) can`t to write music")
    }
    
    func collectMoneyFromViewers() {
        print("Money has been collected from viewers")
    }
    
}

var popArtist = StreetArtist(isUnderRoof: true, name: "Pop Artist", country: Country.usa, genre: Genre.errorGenre)
popArtist.genre



final class TheaterArtist: Artist {
    
    let isBoring: Bool
    
    override var genre: Genre {
        get { Genre.opera }
        set { Genre.opera }
    }
    
    override init(name: String, country: Country, genre: Genre) {
        self.isBoring = true
        super.init(name: name, country: country, genre: genre)
    }
    
    override func whriteTrack(_ sonataName: String) {
        print("\(self.name) write a greate music \(sonataName)")
    }
    
    override func playTrack(_ songName: String) {
        if isBoring {
            print("the audience falls a sleep")
        } else {
            print("\(self.name) playing \(songName)")
        }
    }
    
    func CryOnStage() {
        print("Artist cry on stage, the audience continues to sleep")
    }
    
}

var operaArtist = TheaterArtist(name: "Opera Artist", country: Country.russia, genre: Genre.pop)
operaArtist.genre = Genre.errorGenre
operaArtist.genre
operaArtist.CryOnStage()

var array = [Artist]()
let tarjaTurunen = RockArtist(name: "tarjaTurunen", country: Country.finland, genre: Genre.rock)
let operaSinger = TheaterArtist(name: "operaSonger", country: Country.russia, genre: Genre.opera)
let streetSonger = StreetArtist(isUnderRoof: false, name: "streetSonger", country: Country.usa, genre: Genre.pop)
array.append(tarjaTurunen)
array.append(operaSinger)
array.append(streetSonger)
array

tarjaTurunen.whriteTrack("new track")




//Тут все просто. В задании с треками разобрался с созданием классов, их наследованием, переопределением методов и свойств, инициализацией (когда надо, когда не надо, как использовать супер инит). Повторил что такое словари и массивы, вспомнил как получать доступ к элементам и добавлять/удалять их. Применил перечисления на практике
