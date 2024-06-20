import SwiftUI

struct MenuTitleView: View {
  var body: some View {
    HStack {
      Text("overstimulated")
        .font(.title2)
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
