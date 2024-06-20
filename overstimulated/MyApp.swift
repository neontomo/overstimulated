import AVFoundation
import Combine
import SwiftUI

struct StartView: View {
  @Binding var menuActive: Bool
  @Binding var whichMenuActive: String
  @Binding var whichGameActive: String

  var body: some View {
    if menuActive {
      if whichMenuActive == "main" {
        MenuView(
          menuActive: $menuActive,
          whichMenuActive: $whichMenuActive,
          whichGameActive: $whichGameActive
        )
      } else if whichMenuActive == "games" {
        MenuGamesView(
          menuActive: $menuActive,
          whichMenuActive: $whichMenuActive,
          whichGameActive: $whichGameActive
        )
      } else if whichMenuActive == "settings" {
        MenuSettingsView(
          menuActive: $menuActive,
          whichMenuActive: $whichMenuActive,
          whichGameActive: $whichGameActive
        )
      } else if whichMenuActive == "about" {
        MenuAboutView(
          menuActive: $menuActive,
          whichMenuActive: $whichMenuActive,
          whichGameActive: $whichGameActive
        )
      }
    } else {

      ZStack {
        if whichGameActive == "sunset luma" {
          SunsetLumaView()
            .edgesIgnoringSafeArea(.all)
            .statusBar(hidden: true)
        } else if whichGameActive == "darkroom focus" {
          RoomView()
            .edgesIgnoringSafeArea(.all)
            .statusBar(hidden: true)
        } else if whichGameActive == "birch forest" {
          BirchForestView()
            .edgesIgnoringSafeArea(.all)
            .statusBar(hidden: true)
        }

        VStack {
          Spacer()

          HStack {
            Button(action: {
              print("← return")
              menuActive = true
              whichMenuActive = "main"
              whichGameActive = "main"
            }) {
              Text("← return")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding()
                .background(Color.clear)
            }.padding(
              EdgeInsets(
                top: 0,
                leading: 20,
                bottom: 10,
                trailing: 0
              )
            )
            Spacer()
          }
        }
      }
    }
  }
}

@main
struct MyApp: App {
  @State var menuActive = true
  @State var whichMenuActive = "main"
  @State var whichGameActive = "main"

  init() {
    UserDefaults.standard.register(defaults: ["grainyGames": true])
    UserDefaults.standard.register(defaults: ["speedGames": "fast"])
    UserDefaults.standard.register(defaults: ["soundEffects": true])
  }

  var body: some Scene {
    WindowGroup {
      StartView(
        menuActive: $menuActive,
        whichMenuActive: $whichMenuActive,
        whichGameActive: $whichGameActive
      )

      /* MainView()
        .edgesIgnoringSafeArea(.all)
        .statusBar(hidden: true) */
    }
  }
}

/* #Preview {
  StartView(
    menuActive: .constant(true),
    whichMenuActive: .constant("main"),
    whichGameActive: .constant(0)
  )
} */
