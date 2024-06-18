import SwiftUI

struct RandomColors {
  static func colorFromRGB(_ red: Int, _ green: Int, _ blue: Int) -> Color {
    return Color(
      red: Double(red) / 255.0,
      green: Double(green) / 255.0,
      blue: Double(blue) / 255.0
    )
  }

  static func randomFourColors() -> (Color, Color, Color, Color) {
    let palette = colorPalettes.randomElement()
    let colors = palette!.colors
    //var name = palette!.name
    return (colors[0], colors[1], colors[2], colors[3])
  }
}
