import AVFoundation
import AudioToolbox
import SwiftUI

struct CreateParticleAttributes {
  static func randomX() -> Double {
    return Double.random(in: -UIScreen.main.bounds.width / 2...UIScreen.main.bounds.width / 2)
  }

  static func randomY() -> Double {
    return Double.random(in: -UIScreen.main.bounds.height / 2...UIScreen.main.bounds.height / 2)
  }

  static func randomSize() -> Double {
    return Double.random(in: 1.0...100.0)
  }

  static func randomSpeed() -> Double {
    return Double.random(in: 10.0...300.0)
  }

  static func randomRotation() -> Double {
    return Double.random(in: 0.0...360.0)
  }

  static func randomRoundness() -> CGFloat {
    return CGFloat(Double.random(in: 20...70))
  }
}

struct Particle: View {
  @State public var index: Int
  @State public var onDisappear: (Int) -> Void
  @State private var x = CreateParticleAttributes.randomX()
  @State private var y = CreateParticleAttributes.randomY()
  @State private var size = CreateParticleAttributes.randomSize()
  @State private var speed = CreateParticleAttributes.randomSpeed()
  @State private var rotation = CreateParticleAttributes.randomRotation()
  @State private var roundness: CGFloat = CreateParticleAttributes.randomRoundness()
  @State private var color = RandomColors.randomFourColors()
  @State private var blur = false

  private func updateParticle() {
    self.x = CreateParticleAttributes.randomX()
    self.y = CreateParticleAttributes.randomY()
    self.size = CreateParticleAttributes.randomSize()
    self.speed = CreateParticleAttributes.randomSpeed()
    self.rotation = CreateParticleAttributes.randomRotation()
    self.roundness = CreateParticleAttributes.randomRoundness()
    self.color = RandomColors.randomFourColors()
  }

  private func shrinkParticle() {
    self.x = CreateParticleAttributes.randomX()
    self.y = CreateParticleAttributes.randomY()
    self.rotation = CreateParticleAttributes.randomRotation()
    self.blur = false
    self.size = 0
  }

  var body: some View {
    let gradient = LinearGradient(
      gradient: Gradient(colors: [color.0, color.1]),
      startPoint: .topLeading,
      endPoint: .bottomTrailing
    )

    return AnyView(
      RoundedRectangle(cornerRadius: roundness)
        .fill(gradient)
        .blur(radius: blur ? 8 : 0)
        .frame(width: self.size, height: self.size)
        .offset(x: CGFloat(x), y: CGFloat(y))
        .rotationEffect(.degrees(self.rotation))
        .animation(
          .easeInOut(duration: self.speed)
            .repeatForever(autoreverses: true),
          value: self.speed
        )
        .onAppear {
          Timer.scheduledTimer(withTimeInterval: 10.0, repeats: true) { _ in
            self.updateParticle()
          }
          self.updateParticle()
        }
        .gesture(
          TapGesture()
            .onEnded { _ in
              Sounds.playSounds(soundfile: "whoosh-click-\(Int.random(in: 0...7)).mp3")

              withAnimation(Animation.easeInOut(duration: 0.4)) {
                self.color = RandomColors.randomFourColors()
                self.blur = true
              }

              DispatchQueue.main.asyncAfter(deadline: .now() + 0.4) {
                withAnimation {
                  self.shrinkParticle()
                }
              }

              DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                self.onDisappear(self.index)
              }
            }
        )
    )
  }
}

struct ParticlesView: View {
  @State private var particlesVisible = Array(repeating: true, count: 30)

  var body: some View {
    ZStack {
      ForEach(0..<30, id: \.self) { index in
        if particlesVisible[index] {
          Particle(
            index: index,
            onDisappear: { index in
              particlesVisible[index] = false
            })
        }
      }
    }
  }
}
