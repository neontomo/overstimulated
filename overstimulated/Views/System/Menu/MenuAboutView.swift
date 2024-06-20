//
//  MenuCredits.swift
//  overstimulated
//
//  Created by Tomo Myrman on 2024-06-12.
//

import SwiftUI

struct MenuAboutView: View {
  @Binding var menuActive: Bool
  @Binding var whichMenuActive: String
  @Binding var whichGameActive: String

  var body: some View {
    ZStack {
      Color.black.edgesIgnoringSafeArea(.all)
      VStack {
        Spacer()

        Group {
          ScrollView {
            Text(
              "in early 2024 I was diagnosed with ADHD and autism. by then, I was 30 years old already and I was frustrated, emotional and confused about how I could have spent so much time in the world without anyone noticing.\n\nit explained so many aspects of my work, school and social life and why I get so easily overstimulated.\n\nI started to think about how I can make life a bit easier for people like me and you.\n\nthe result of this experimentation was this app - a \"game\" without goals, points or time limits. it's designed for you to wind down, focus on beautiful experiences and get away from daily stress.\n\nI know it's hard to make good choices on screens, but I hope you'll make some time to try this out. it's a small step, but it's a good step.\n\nps. share with friends and email me if you have any feedback. tomomyrman@proton.me\n\n\n\ncredits:\n\nconcept, game design, code, music, sound design: Tomo Myrman\n\ninspired by: James Turrell, sunset lamps\n\nwith feedback from: Emily Whitney, François Simond"
            )
            .font(.title2)
            .fontWeight(.bold)
            .foregroundColor(.white)
            .padding(
              EdgeInsets(
                top: 50,
                leading: 200,
                bottom: 50,
                trailing: 200
              )
            )
          }

          Spacer()

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
