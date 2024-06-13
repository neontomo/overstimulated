import SwiftUI

struct SettingsView: View {
  @Binding var sliderValue: Double
  // @Binding var isPlaying: Bool
  @Binding var brightnessHoveringSettings: Bool

  var body: some View {
    HStack {
      Text("brightness" + String(format: " %.0f", sliderValue) + "%")
        .font(.system(size: 15))
        .foregroundColor(.white).opacity(0.8)

      Slider(value: $sliderValue, in: 0...100, step: 1.0)
    }
    .opacity(brightnessHoveringSettings ? 1.0 : 0.3)
    .onHover(
      perform: { hovering in
        if hovering {
          //NSCursor.pointingHand.push()
          brightnessHoveringSettings = true
        } else {
          //NSCursor.pop()
          brightnessHoveringSettings = false
        }
      }
    )
    .frame(maxWidth: 500, alignment: .center)
    .padding(EdgeInsets(top: 30, leading: 30, bottom: 0, trailing: 30))
  }
}
