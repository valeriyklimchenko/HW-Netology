


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
    private(set) var trackList: [Track]
    private var trackNumber: Int {
        trackList.count
    }
    
    init(albumName: String, trackList: [Track]) {
        self.albumName = albumName
        self.trackList = trackList
        }
    
    
    func addTrack(_ newTrack: Track) {
        trackList.append(newTrack)
            print("Track '\(newTrack.name)' added to '\(self.albumName)'")
        }
    
    func removeTrack(_ trackRemoved: Track) {
        for (i, n) in trackList.enumerated() {
            if n.name == trackRemoved.name {
                trackList.remove(at: i)
            }
        }
        print("Track '\(trackRemoved.name)' was removed from '\(albumName)'")
    }
    
    func showTrackList() {
        var showTracks: String = ""
        trackList.map({showTracks += ($0.name) + ", "})
        print("Album \(albumName.self) contains \(trackList.count) tracks: \(showTracks)")
    }
}
        
var onceAlbum = Album(albumName: "Once", trackList: [])
var wish = Track(name: "Wish I Had an Angel", performer: "Tarja Turunen", duration: "4.1", country: Country.finland)
onceAlbum.addTrack(wish)
var nemo = Track(name: "Nemo", performer: "Tarja Turunen", duration: "4.6", country: Country.finland)
onceAlbum.addTrack(nemo)
var planet = Track(name: "Planet Hell", performer: "Tarja Turunen", duration: "4.6", country: Country.finland)
onceAlbum.addTrack(planet)
onceAlbum.removeTrack(nemo)

onceAlbum.showTrackList()

print("Task 2, 3_________________")

class Library {
    var library: [Album]
    init(library: [Album]) {
        self.library = library
    }
    
    func addAlbum(_ albumName: Album) {
        library.append(albumName)
    }
    
    func moveTrackToOtherAlbum(_ newTrack: Track, from oneAlbum: Album, to otherAlbum: Album) {
        oneAlbum.removeTrack(newTrack)
        otherAlbum.addTrack(newTrack)
        
    }
    
}

var myLibrary = Library(library: [])

var myFavoriteAlbum = Album(albumName: "myFavoriteAlbum", trackList: [])
myLibrary.moveTrackToOtherAlbum(wish, from: onceAlbum, to: myFavoriteAlbum)
myLibrary.moveTrackToOtherAlbum(planet, from: onceAlbum, to: myFavoriteAlbum)
onceAlbum.showTrackList()

myFavoriteAlbum.addTrack(Track(name: "The Siren", performer: "Tarja Turunen", duration: "5", country: Country.finland))
myFavoriteAlbum.showTrackList()
