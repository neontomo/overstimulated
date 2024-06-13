//
//  overstimulated
//
//  Created by Tomo Myrman on 2024-06-11.
//

import Combine
import SwiftUI

struct GradientView: View, Equatable {
  @State private var pulsate = false
  @State private var rotation = 0.0
  @State private var isAnimating = false
  @State private var gradientColors = RandomColors.randomFourColors()
  @State private var animationDuration: Double = 10.0
  @State private var timer: Publishers.Autoconnect<Timer.TimerPublisher> = Timer.publish(
    every: 10, on: .main, in: .common
  ).autoconnect()

  static func == (lhs: GradientView, rhs: GradientView) -> Bool {
    return true  // prevents re-rendering
  }

  var body: some View {
    ZStack {
      ZStack {
        EllipticalGradient(
          colors: [
            self.gradientColors.0,
            self.gradientColors.1,
            self.gradientColors.2,
            self.gradientColors.3,
          ],
          center: .center,
          startRadiusFraction: Double.random(in: 0.1...0.3),
          endRadiusFraction: pulsate ? Double.random(in: 0.5...1.0) : 0.5
        )
        .blendMode(.screen)
        // .hueRotation(Angle(degrees: Bool.random() ? 360 : 0))
      }
      .onAppear {
        withAnimation(Animation.easeInOut(duration: self.animationDuration)) {
          self.pulsate.toggle()
        }
      }
      .onReceive(timer) { _ in
        withAnimation(Animation.easeInOut(duration: self.animationDuration)) {
          self.gradientColors = RandomColors.randomFourColors()
          self.pulsate.toggle()
        }
      }
    }
  }
}
