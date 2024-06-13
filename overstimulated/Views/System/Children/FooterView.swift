import SwiftUI

struct FooterView: View {
  @Binding var brightnessHoveringCredits: Bool

  var body: some View {
    Link("made by Tomo Myrman", destination: URL(string: "https://neontomo.com")!)
      .font(.system(size: 15))
      .foregroundColor(.white)
      .padding(EdgeInsets(top: 0, leading: 30, bottom: 30, trailing: 30))
      .opacity(brightnessHoveringCredits ? 1.0 : 0.3)
      .onHover(
        perform: { hovering in
          if hovering {
            brightnessHoveringCredits = true
          } else {
            //NSCursor.pop()
            brightnessHoveringCredits = false
          }
        }
      )
  }
}
