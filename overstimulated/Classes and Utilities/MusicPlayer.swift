import AVFoundation

class MusicPlayer {
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
  @Published var isPlaying: Bool = false {
    didSet {
      if isPlaying {
        MusicPlayer.shared.player?.play()
      } else {
        MusicPlayer.shared.player?.pause()
      }
    }
  }
}
