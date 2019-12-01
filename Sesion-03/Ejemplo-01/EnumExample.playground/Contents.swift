import UIKit

struct Song {
  let name: String
  let album: String
  var timesPlayed: Int = 0
  
  mutating func hasBeenPlayed() {
    timesPlayed += 1
  }
}

var song: Song = Song(name: "Perreo", album: "Intenso")
song.hasBeenPlayed()
print(song.timesPlayed)

