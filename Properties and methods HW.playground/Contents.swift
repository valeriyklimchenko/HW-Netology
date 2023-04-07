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

//Вместо имени класса Category испольхую имя Album, потому что захотелось добавить альбомы и теки одного исполнителя. Все остальное строго по заданию
class Album {
    
    let albumName: String
    var track: Track
    var trackList: [String: [String]]
    var trackNumber: Int {
        trackList.count
    }
    
    init(albumName: String) {
        self.albumName = albumName
        self.track = Track(name: "", performer: "", duration: "", country: Country.finland)
        self.trackList = [track.name: [track.performer, track.country.rawValue, track.duration]]
    }
    
    
    func addTrack(_ trackAded: Track ,to album: String) {
        trackList[""] = nil
        var count = trackList.count
        trackList[trackAded.name] = [trackAded.performer, trackAded.country.rawValue, trackAded.duration]
        if trackList.count > count {
            print("Track '\(trackAded.name)' added to '\(album)'")
        }
    }
    
    func removeTrack(_ trackRemoved: String, from album: String) {
        trackList[trackRemoved] = nil
    }
}
        
var once = Album(albumName: "Once")
once.addTrack(Track(name: "Wish I Had an Angel", performer: "Tarja Turunen", duration: "4.1", country: Country.finland), to: "Once")
once.addTrack(Track(name: "Nemo", performer: "Tarja Turunen", duration: "4.6", country: Country.finland), to: "Once")
once.addTrack(Track(name: "Planet Hell", performer: "Tarja Turunen", duration: "4.6", country: Country.finland), to: "Once")
once.addTrack(Track(name: "Planet Hell", performer: "Tarja Turunen", duration: "4.6", country: Country.finland), to: "????????????")

once.trackList



class Library {
    
//    var track: Track
    var albumList: [String: [String: [String]]]

    init(albumList: [String: [String: [String]]]) {
        self.albumList = albumList
//        self.track = track
    }
    
    func addAlbum(_ albumName: String) {
        for key in albumList.keys {
            if key != albumName {
                albumList[albumName] = ["": [""]]
                print("Album '\(albumName)' added")
                break
            }
        }
    }
        
    func addTrackToAlbum(addTrack: String, to albumName: String) {
        
        var trackInAlbum = [String: [String]]()
        //Если альбом с таким именем уже существует, то сохраняем треки этого альбома в переменной, затем к ним добавляем новый трек. Иначе при обновлении значения словаря старые треки удалятся
        for key in albumList.keys {
            if key == albumName {
                //сохранили треки в переменной, ключ - имя трека
                trackInAlbum = albumList[albumName] ?? [String: [String]]()
                //
                trackInAlbum[addTrack] = [track.performer, track.duration, track.country.rawValue]
                
                print(trackInAlbum)
            }
        }

}

        func showAlbumList() {
            
            var album = ""
            
            for keys in albumList.keys {
                album += keys + ", "
            }
            
            print("Album list: \(album)")
            
        }
//
//    func showTrackInAlbum(_ album: String) {
//
//        var tracks: String = ""
//        for element in albumList[album]! {
//            tracks += element + ", "
//        }
//
//        print("Album \(album): \(tracks)")
//    }
//
//    func moveTrack(move track: String, from album: String, to otherAlbum: String) {
//
//        var countAlbum = 0
//        var countOtherAlbum = 0
//
//        for keys in albumList.keys {
//
//            if album == keys {
//                countAlbum += 1
//                break
//            }
//        }
//
//        if countAlbum == 0 {
//            print("First add an album named \(album)")
//        }
//
//        for keys in albumList.keys {
//            if otherAlbum == keys {
//                countOtherAlbum += 1
//                break
//
//            }
//        }
//
//        if countOtherAlbum == 0 {
//            print("First add an album named \(otherAlbum)")
//        }
//
//        if countAlbum + countOtherAlbum == 2 {
//
//            albumList[album]!.remove(at: albumList[album]!.index(of: track)!)
//            albumList[otherAlbum]!.append(track)
//
//
//            print("Track '\(track)' has moved from '\(album)' to '\(otherAlbum)'")
//
//        }
//    }
}
var library = Library(albumList: ["" : ["" : [""]]])
library.addAlbum("Angels Fall First")
library.addAlbum("Wishmaster")
library.addAlbum("Once")
library.addAlbum("Imaginaerum")
library.showAlbumList()

library.addTrackToAlbum(addTrack: "She is My Sin", to: "Wishmaster")
//library.showAlbumList()
//
//library.addTrackToAlbum(addTrack: "Wish I Had an Angel", to: "Once")
//library.addTrackToAlbum(addTrack: "Nemo", to: "Onc?????????????????e")
//library.addTrackToAlbum(addTrack: "Planet Hell", to: "Once")
//
//library.addTrackToAlbum(addTrack: "She Is My Sin", to: "Wishmaster")
//library.addTrackToAlbum(addTrack: "Come Cover Me", to: "Wishmaster")
//library.addTrackToAlbum(addTrack: "Wishmaster", to: "Wishmaster")
//library.addTrackToAlbum(addTrack: "The Kinslayer", to: "Wishmaster")
//library.addTrackToAlbum(addTrack: "Wanderlust", to: "Wishmaster")
//library.addTrackToAlbum(addTrack: "Sleepwalker", to: "Wishmaster")
//
//library.showTrackInAlbum("Wishmaster")
//library.showTrackInAlbum("Once")
//library.moveTrack(move: "Sleepwalker", from: "Wishmaster", to: "Once")
//library.showTrackInAlbum("Wishmaster")
//library.showTrackInAlbum("Once")
//
////library.showTrackInAlbum("Wishmaster")
////library.showTrackInAlbum("Once")
//library.moveTrack(move: "Sleepwalker", from: "Onc??????e", to: "Wishm????????????aster")
////library.showTrackInAlbum("Wishmaster")
////library.showTrackInAlbum("Once")
//
//library.showAlbumList()
//
