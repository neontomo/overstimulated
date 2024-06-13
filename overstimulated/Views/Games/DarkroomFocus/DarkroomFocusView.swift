import AudioToolbox
import SwiftUI

struct Triangle: Shape {
  func path(in rect: CGRect) -> Path {
    var path = Path()

    path.move(to: CGPoint(x: rect.midX, y: rect.minY))
    path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
    path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
    path.addLine(to: CGPoint(x: rect.midX, y: rect.minY))

    return path
  }
}

struct Orb: View {
  @State var x: Double
  @State var y: Double
  @State var width: Double
  @State var height: Double
  @State var roundness: CGFloat = 20
  @State var rotation: Double = 0
  @Binding var color: Color
  @AppStorage("speedGames") var speedGames: String = "fast"
  @AppStorage("soundEffects") var soundEffects: Bool = true

  func scheduleAnimation() {
    var timer: Double
    switch speedGames {
    case "slow":
      timer = 6.0
    case "medium":
      timer = 4.0
    case "superfast":
      timer = 1.0
    default:  // "fast" & any other value
      timer = 2.0
    }

    Timer.scheduledTimer(withTimeInterval: timer, repeats: false) { _ in
      withAnimation(Animation.easeInOut(duration: timer)) {
        self.width = Bool.random() ? Double.random(in: 50...300) : self.width
        self.height = Bool.random() ? Double.random(in: 50...300) : self.height
        self.roundness = Bool.random() ? CGFloat.random(in: 30...100) : self.roundness
        self.rotation = (0..<3).randomElement() == 0 ? Double.random(in: 0...360) : self.rotation
      }
      self.scheduleAnimation()
    }
  }

  var body: some View {
    Group {
      RoundedRectangle(cornerRadius: roundness)
        .fill(color)
        .frame(width: width, height: height)
        .rotationEffect(.degrees(rotation))
        .offset(x: x - width / 2, y: y - height / 2 - 400)
        .shadow(color: Color.white, radius: 100)
        .blur(radius: CGFloat(60), opaque: false)
        .opacity(0.3)

      RoundedRectangle(cornerRadius: roundness)
        .fill(color)
        .frame(width: width, height: height)
        .rotationEffect(.degrees(rotation))
        .offset(x: x - width / 2, y: y - height / 2)
        .shadow(color: color, radius: 60)
        .shadow(color: color, radius: 200)
        .simultaneousGesture(
          RotationGesture()
            .onChanged { angle in
              self.rotation = angle.degrees
            }
        )
        .simultaneousGesture(
          DragGesture()
            .onChanged { value in
              self.x = Double(value.location.x)
              self.y = Double(value.location.y)
            }
        )
        .simultaneousGesture(
          TapGesture()
            .onEnded { _ in
              self.color = RandomColors.randomFourColors().0
              if soundEffects {
                AudioServicesPlaySystemSound(1057)
              }
            }
        )

      RoundedRectangle(cornerRadius: roundness)
        .fill(color)
        .frame(width: width * 1.5, height: height * 1.5)
        .rotationEffect(.degrees(rotation))
        .offset(x: x - width * 1.5 / 2, y: y - height * 1.5 / 2 + 400)
        .shadow(color: Color.white, radius: 100)
        .blur(radius: CGFloat(100))
        .opacity(0.3)

    }
    .onAppear(
      perform: {
        self.scheduleAnimation()
      }
    )

  }
}

struct RoomView: View {
  @State var colorRoom: Color = RandomColors.randomFourColors().0
  @AppStorage("grainyGames") var grainyGames: Bool = false

  var body: some View {

    ZStack {
      Color.black.edgesIgnoringSafeArea(.all)

      GeometryReader { geometry in

        /* back wall */
        Rectangle()
          .fill(colorRoom)
          .border(Color.black, width: 5)
          .frame(width: geometry.size.width / 2, height: geometry.size.height / 3)
          .offset(x: geometry.size.width / 4, y: geometry.size.height / 3)
          .shadow(color: Color.black.opacity(1.0), radius: 50)
          .opacity(0.2)
          .blur(radius: CGFloat(50), opaque: false)

        VStack {
          /* Roof */
          Rectangle()
            .fill(colorRoom)
            .frame(width: geometry.size.width, height: geometry.size.height / 3)
            .shadow(color: Color.black.opacity(1.0), radius: 50)

          Spacer()

          /* Floor */
          Rectangle()
            .fill(colorRoom)
            .frame(width: geometry.size.width, height: geometry.size.height / 3)
            .shadow(color: Color.black.opacity(1.0), radius: 50)

        }.opacity(0.2)

        HStack {
          VStack {
            Triangle()
              .fill(colorRoom)
              .frame(width: geometry.size.width / 2, height: geometry.size.height / 3)
              .offset(x: -geometry.size.width / 4)
              .shadow(color: Color.black.opacity(1.0), radius: 50)
              .opacity(0.3)

            Spacer()

            Triangle()
              .fill(colorRoom)
              .frame(width: geometry.size.width / 2, height: geometry.size.height / 3)
              .rotationEffect(.degrees(180))
              .offset(x: -geometry.size.width / 4)
              .shadow(color: Color.black.opacity(1.0), radius: 50)
              .opacity(0.3)
          }
          .edgesIgnoringSafeArea(.all)
          .frame(width: geometry.size.width / 2)

          Spacer()

          VStack {
            Triangle()
              .fill(colorRoom)
              .frame(width: geometry.size.width / 2, height: geometry.size.height / 3)
              .offset(x: geometry.size.width / 4)
              .shadow(color: Color.black.opacity(1.0), radius: 50)
              .opacity(0.3)

            Spacer()

            Triangle()
              .fill(
                Color(colorRoom)
              )
              .frame(width: geometry.size.width / 2, height: geometry.size.height / 3)
              .rotationEffect(.degrees(180))
              .offset(x: geometry.size.width / 4)
              .shadow(color: Color.black.opacity(1.0), radius: 50)
              .opacity(0.3)
          }
          .edgesIgnoringSafeArea(.all)
          .frame(width: geometry.size.width / 2)
        }
        .frame(
          width: geometry.size.width,
          height: geometry.size.height
        )
        .edgesIgnoringSafeArea(.all)
        .opacity(0.2)

        HStack {
          VStack {
            Spacer()

            /* Left wall */
            Rectangle()
              .fill(colorRoom)
              .frame(width: geometry.size.width / 4, height: geometry.size.height / 3)
              .shadow(color: Color.black.opacity(1.0), radius: 50)

            Spacer()

          }

          Spacer()

          HStack {
            VStack {
              Spacer()

              /* Right wall */
              Rectangle()
                .fill(colorRoom)
                .frame(width: geometry.size.width / 4, height: geometry.size.height / 3)
                .shadow(color: Color.black.opacity(1.0), radius: 50)

              Spacer()

            }
          }

        }.opacity(0.2)

        Orb(
          x: geometry.size.width / 2,
          y: geometry.size.height / 2,
          width: 100,
          height: 100,
          color: $colorRoom
        )

        if grainyGames {
          Image("grain")
            .resizable(resizingMode: .tile)
            .blendMode(.overlay)
            .edgesIgnoringSafeArea(.all)
            .opacity(0.5)
        }
      }
      .onAppear {
        Timer.scheduledTimer(withTimeInterval: 5, repeats: true) { _ in
          withAnimation(Animation.easeInOut(duration: 2)) {
            colorRoom = RandomColors.randomFourColors().0
          }
        }
      }
      .edgesIgnoringSafeArea(.all)
    }

  }
}

#Preview {
  RoomView()
}
