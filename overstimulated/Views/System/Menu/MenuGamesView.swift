import SwiftUI

struct MenuGamesView: View {
  @Binding var menuActive: Bool
  @Binding var whichMenuActive: String
  @Binding var whichGameActive: String

  var body: some View {
    ZStack {
      Color.black.edgesIgnoringSafeArea(.all)
      VStack {
        Spacer()

        Group {
          Button(action: {
            print("starting sunset luma")
            menuActive = false
            whichGameActive = "sunset luma"
          }) {
            Text("sunset luma")
              .font(.title)
              .fontWeight(.bold)
              .foregroundColor(.white)
              .padding()
          }

          Button(action: {
            print("starting darkroom focus")
            menuActive = false
            whichGameActive = "darkroom focus"
          }) {
            Text("darkroom focus")
              .font(.title)
              .fontWeight(.bold)
              .foregroundColor(.white)
              .padding()
          }

          Button(action: {
            print("starting birch forest")
            menuActive = false
            whichGameActive = "birch forest"
          }) {
            Text("birch forest")
              .font(.title)
              .fontWeight(.bold)
              .foregroundColor(.white)
              .padding()
          }

          Button(action: {
            print("returning to menu")
            menuActive = true
            whichMenuActive = "main"
            whichGameActive = "main"
          }) {
            Text("← return")
              .font(.title2)
              .fontWeight(.bold)
              .foregroundColor(.white)
              .padding()
          }
        }

        Spacer()
      }
    }
  }
}
/*
#Preview {
  MenuGamesView(menuActive: .constant(true), whichGameActive: .constant(0))
} */
