//
//  MenuSettings.swift
//  overstimulated
//
//  Created by Tomo Myrman on 2024-06-12.
//

import SwiftUI

struct MenuSettingsView: View {
  @Binding var menuActive: Bool
  @Binding var whichMenuActive: String
  @Binding var whichGameActive: String
  @AppStorage("grainyGames") var grainyGames: Bool = false
  @AppStorage("speedGames") var speedGames: String = "fast"
  @AppStorage("soundEffects") var soundEffects: Bool = true

  var body: some View {
    ZStack {
      Color.black.edgesIgnoringSafeArea(.all)
      VStack {
        Spacer()

        Group {
          Button(action: {
            grainyGames.toggle()
            print(
              "toggling grainy games to \(grainyGames ? "off" : "on")"
            )
          }) {
            Text(
              "grain (\(grainyGames ? "on" : "off")) "
            )
            .font(.title)
            .fontWeight(.bold)
            .foregroundColor(.white)
            .padding()
          }

          Button(action: {
            soundEffects.toggle()
            print("toggling sound effects to \(soundEffects ? "on" : "off")")
          }) {
            Text("sounds (\(soundEffects ? "on" : "off"))")
              .font(.title)
              .fontWeight(.bold)
              .foregroundColor(.white)
              .padding()
          }

          Button(action: {
            switch speedGames {
            case "fast":
              speedGames = "medium"
            case "medium":
              speedGames = "slow"
            case "slow":
              speedGames = "superfast"
            case "superfast":
              speedGames = "fast"
            default:
              speedGames = "fast"
            }

            print("new game speed: \(speedGames)")
          }) {
            Text("game speed (\(speedGames))")
              .font(.title)
              .fontWeight(.bold)
              .foregroundColor(.white)
              .padding()
          }

          HStack {
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

            Button(action: {
              print("reset settings")
              grainyGames = true
              speedGames = "fast"
              soundEffects = true
            }) {
              Text("reset settings")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(.red)
                .padding()
            }
          }
        }

        Spacer()
      }
    }
  }
}
