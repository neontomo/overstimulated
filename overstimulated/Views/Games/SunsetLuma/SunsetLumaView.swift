//
//  MainView.swift
//  overstimulated
//
//  Created by Tomo Myrman on 2024-06-11.

import SwiftUI

struct SunsetLumaView: View {
  @State private var sliderValue: Double = 100.0
  @State private var brightnessHoveringSettings = false
  @AppStorage("grainyGames") var grainyGames: Bool = false

  var body: some View {
    ZStack {
      ZStack {
        Color.black.edgesIgnoringSafeArea(.all)

        GradientView()
          .equatable()  // prevents re-rendering

        if grainyGames {
          Image("grain")
            .resizable(resizingMode: .tile)
            .blendMode(.overlay)
            .edgesIgnoringSafeArea(.all)
        }

      }
      .opacity(clamp(value: sliderValue / 100.0, minValue: 0.2, maxValue: 1.0))
      .drawingGroup()
      .colorScheme(.dark)
      .preferredColorScheme(.dark)

      ParticlesView()

      SystemMainView(
        sliderValue: $sliderValue,
        brightnessHoveringSettings: $brightnessHoveringSettings
      )

    }
  }
}

// #Preview {
//   SunsetLumaView()
// }
