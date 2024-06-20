import AVFoundation
import SwiftUI

class Sounds {
  static var audioPlayer: AVAudioPlayer?

  static func playSounds(soundfile: String) {
    @AppStorage("soundEffects") var soundEffects: Bool = true
    if let path = Bundle.main.path(forResource: soundfile, ofType: nil) {

      do {
        if soundEffects {
          audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
          audioPlayer?.volume = 0.1
          audioPlayer?.prepareToPlay()
          audioPlayer?.play()
          print("Sound played")
        }

      } catch {
        print("Error")
      }
    } else {
      print("No sound file found")
    }
  }
}

/* class MusicPlayer {
  static let shared = MusicPlayer()
  var player: AVAudioPlayer?

  func playMusic() {
    guard let url = Bundle.main.url(forResource: "aerial", withExtension: "mp3") else {
      print("Music file not found.")
      return
    }

    do {
      player = try AVAudioPlayer(contentsOf: url)
      player?.numberOfLoops = -1
      player?.prepareToPlay()
      player?.play()
    } catch {
      print("Error playing music: \(error.localizedDescription)")
    }
  }
}

class MusicPlayerState: ObservableObject {
  @Published var isPlaying: Bool = true {
    didSet {
      if isPlaying {
        MusicPlayer.shared.player?.play()
      } else {
        MusicPlayer.shared.player?.pause()
      }
    }
  }
}
 */
