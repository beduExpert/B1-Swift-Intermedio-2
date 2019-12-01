import AVFoundation

struct Song {
  let name: String
  let album: String
  let year: String
  var timesPlayed: Int = 0
  
  mutating func hasBeenPlayed() {
    timesPlayed += 1
  }
}

var song: Song = Song(name: "The less I know the better",
                      album: "Tame Impala")
song.hasBeenPlayed()
print(song.timesPlayed)


