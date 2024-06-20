import SwiftUI

struct MenuView: View {
  @Binding var menuActive: Bool
  @Binding var whichMenuActive: String
  @Binding var whichGameActive: String

  var body: some View {
    /*
    title: overstimulated
    menu items: games, settings, about
    */

    /* black bg */
    ZStack {
      Color.black.edgesIgnoringSafeArea(.all)

      VStack {
        MenuTitleView()
        Spacer()
      }
      VStack {
        Spacer()

        Group {
          Button(action: {
            print("opening games menu")
            menuActive = true
            whichMenuActive = "games"
          }) {
            Text("games")
              .font(.title)
              .fontWeight(.bold)
              .foregroundColor(.white)
              .padding()
          }

          Button(action: {
            print("opening settings menu")
            menuActive = true
            whichMenuActive = "settings"
          }) {
            Text("settings")
              .font(.title)
              .fontWeight(.bold)
              .foregroundColor(.white)
              .padding()
          }

          Button(action: {
            print("opening about menu")
            menuActive = true
            whichMenuActive = "about"
          }) {
            Text("about")
              .font(.title)
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

/* #Preview {
  MenuView(menuActive: .constant(true), whichGameActive: .constant(0))
}
 */
