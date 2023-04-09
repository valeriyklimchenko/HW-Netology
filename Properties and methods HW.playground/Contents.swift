enum Country: String {
    case russia = "Russia"
    case usa = "USA"
    case gb = "GB"
    case france = "France"
    case finland = "Finland"
}

struct Track {
    
    let name: String
    let performer: String
    let duration: String
    let country: Country
        
    }

class Album {
    
    let albumName: String
    private var trackList: [String: [String]]
    private var trackNumber: Int {
        trackList.count
    }
    
    init(albumName: String, trackList: [String: [String]]) {
        self.albumName = albumName
        self.trackList = trackList
        }
    
    
    func addTrack(_ newTrack: Track ,to otherAlbum: Album) {
        trackList[newTrack.name] = [newTrack.performer, newTrack.country.rawValue, newTrack.duration]
            print("Track '\(newTrack.name)' added to '\(otherAlbum.albumName)'")
        }
    
    func removeTrack(_ trackRemoved: String, from album: String) {
        trackList[trackRemoved] = nil
        print("Track '\(trackRemoved)' was removed from '\(albumName)'")
    }
    
    func showTrackList() {
        trackList.removeValue(forKey: "")
        var myTrackList = ""
        for element in trackList.keys {
            myTrackList += element + ", "
        }
        print("Album \(albumName.self) contains \(trackList.count) tracks: \(myTrackList)")
    }
    
}
        
var onceAlbum = Album(albumName: "Once", trackList: ["" : [""]])
var wish = Track(name: "Wish I Had an Angel", performer: "Tarja Turunen", duration: "4.1", country: Country.finland)
onceAlbum.addTrack(wish, to: onceAlbum)
var nemo = Track(name: "Nemo", performer: "Tarja Turunen", duration: "4.6", country: Country.finland)
onceAlbum.addTrack(nemo, to: onceAlbum)
var planet = Track(name: "Planet Hell", performer: "Tarja Turunen", duration: "4.6", country: Country.finland)
onceAlbum.addTrack(planet, to: onceAlbum)
onceAlbum.removeTrack("Nemo", from: "Once")

onceAlbum.showTrackList()


class Library {
    var library: [Album]
    init(library: [Album]) {
        self.library = library
    }
    
    func addAlbum(_ albumName: Album) {
        library.append(albumName)
    }
    
    func moveTrackToOtherAlbum(_ newTrack: Track, from oneAlbum: Album, to otherAlbum: Album) {
        oneAlbum.removeTrack(newTrack.name, from: oneAlbum.albumName)
        otherAlbum.addTrack(newTrack, to: otherAlbum)
        
    }
    
}

var myLibrary = Library(library: [])

var myFavoriteAlbum = Album(albumName: "myFavoriteAlbum", trackList: ["" : [""]])
myLibrary.moveTrackToOtherAlbum(wish, from: onceAlbum, to: myFavoriteAlbum)

onceAlbum.showTrackList()
myFavoriteAlbum.showTrackList()
