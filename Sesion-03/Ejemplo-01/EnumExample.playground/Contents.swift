import UIKit

// An Enum with AssociatedValues
enum Playable {
  case success(_ path: String)
  case error(message: String)
}

func loadSong() {
  let file = Bundle.main.path(forResource: "songName", ofType: "mp3")
  let path = isPlayable(file)
  if case .success = path {
    print("puede reproducirse")
    // perfom play code
  }
  if case .error(let msg) = path {
    print(msg)
  }
}

func isPlayable(_ path: String?) -> Playable {
  guard let path = path else { return .error(message: "Not playable") }
  return .success(path)
}

//Testing
loadSong()
