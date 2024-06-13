import SwiftUI

struct MenuTitleView: View {
  var body: some View {
    Group {
      Text("overstimulated")
        .font(.largeTitle)
        .fontWeight(.bold)
        .foregroundColor(.white)
        .padding()

      Text("by Tomo Myrman")
        .font(.title2)
        .fontWeight(.bold)
        .foregroundColor(.white)
        .padding()
    }
  }
}

#Preview {
  MenuTitleView()
}
