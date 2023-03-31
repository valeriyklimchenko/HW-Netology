struct Track {
    
    let name: String
    let performer: String
    let duration: Double
    
    enum Country: String {
        case russia = "Russia"
        case usa = "USA"
        case gb = "GB"
        case france = "France"
        case finland = "Finland"
        
    }
}

//Вместо имени класса Category испольхую имя Album, потому что захотелось добавить альбомы и теки одного исполнителя. Все остальное строго по заданию
class Album {
    
    let albumName: String
    lazy var trackList = [String]()
    var tracksNumber: Int { trackList.count }
    
    init(albumName: String, trackList: [String], tracksNumber: Int = 0) {
        self.albumName = albumName
        self.trackList = trackList
    }
        
    func addTrack(_ track: String) {
        trackList.append(track)
        print("add track \(track), number of tracks \(tracksNumber)")
    }
    
    func deleteAllTrack() {
        trackList.removeAll()
        print("delete all track")
    }
    
}


var rock = Album(albumName: "Rock", trackList: [])
//rock.addTrack("Once")
//rock.addTrack("Planet Hell")
//rock.deleteAllTrack()
rock.tracksNumber
rock.trackList

class Library {
    
    var albumList = [String: [String]]()
    
    func addAlbum(_ albumName: String) {
        albumList.updateValue([], forKey: albumName)
        print("Album '\(albumName)' aded")
    }
    
    func addTrackToAlbum(addTrack: String, to albumName: String) {
        
        var count = 0
        
        for keys in albumList.keys {
        
            if albumName == keys {
                
                var trackList = albumList[albumName]
                trackList!.append(addTrack)
                albumList.updateValue(trackList!, forKey: albumName)
                print("track '\(addTrack)' aded to album '\(albumName)'")
                count += 1
                break
                
            }
        }
               
        if count == 0 {
            print("First add an album named \(albumName)")
        }
    }
    
    func showAlbumList() {
        
        var album = ""
        
        for keys in albumList.keys {
            album += keys + ", "
        }
        
        print("Album list: \(album)")
        
    }
    
    func showTrackInAlbum(_ album: String) {
        
        var tracks: String = ""
        for element in albumList[album]! {
            tracks += element + ", "
        }
        
        print("Album \(album): \(tracks)")
    }
    
    func moveTrack(move track: String, from album: String, to otherAlbum: String) {
        
        var countAlbum = 0
        var countOtherAlbum = 0
        
        for keys in albumList.keys {
        
            if album == keys {
                countAlbum += 1
                break
            }
        }
               
        if countAlbum == 0 {
            print("First add an album named \(album)")
        }
        
        for keys in albumList.keys {
            if otherAlbum == keys {
                countOtherAlbum += 1
                break
                
            }
        }
               
        if countOtherAlbum == 0 {
            print("First add an album named \(otherAlbum)")
        }
        
        if countAlbum + countOtherAlbum == 2 {
            
            albumList[album]!.remove(at: albumList[album]!.index(of: track)!)
            albumList[otherAlbum]!.append(track)

            
            print("Track '\(track)' has moved from '\(album)' to '\(otherAlbum)'")
            
        }
    }
}

var library = Library()
library.addAlbum("Angels Fall First")
library.addAlbum("Wishmaster")
library.addAlbum("Once")
library.addAlbum("Imaginaerum")

library.addTrackToAlbum(addTrack: "Wish I Had an Angel", to: "Once")
library.addTrackToAlbum(addTrack: "Nemo", to: "Onc?????????????????e")
library.addTrackToAlbum(addTrack: "Planet Hell", to: "Once")

library.addTrackToAlbum(addTrack: "She Is My Sin", to: "Wishmaster")
library.addTrackToAlbum(addTrack: "Come Cover Me", to: "Wishmaster")
library.addTrackToAlbum(addTrack: "Wishmaster", to: "Wishmaster")
library.addTrackToAlbum(addTrack: "The Kinslayer", to: "Wishmaster")
library.addTrackToAlbum(addTrack: "Wanderlust", to: "Wishmaster")
library.addTrackToAlbum(addTrack: "Sleepwalker", to: "Wishmaster")

library.showTrackInAlbum("Wishmaster")
library.showTrackInAlbum("Once")
library.moveTrack(move: "Sleepwalker", from: "Wishmaster", to: "Once")
library.showTrackInAlbum("Wishmaster")
library.showTrackInAlbum("Once")

//library.showTrackInAlbum("Wishmaster")
//library.showTrackInAlbum("Once")
library.moveTrack(move: "Sleepwalker", from: "Onc??????e", to: "Wishm????????????aster")
//library.showTrackInAlbum("Wishmaster")
//library.showTrackInAlbum("Once")

library.showAlbumList()

