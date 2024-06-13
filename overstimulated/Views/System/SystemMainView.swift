import SwiftUI

struct SystemMainView: View {
  @Binding var sliderValue: Double
  @Binding var brightnessHoveringSettings: Bool

  var body: some View {
    VStack {
      SettingsView(
        sliderValue: $sliderValue,
        brightnessHoveringSettings: $brightnessHoveringSettings)

      Spacer()

    }
  }
}
