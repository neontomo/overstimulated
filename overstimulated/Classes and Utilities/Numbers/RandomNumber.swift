import SwiftUI

struct RandomNumber {
  static func randomFloat(in range: ClosedRange<CGFloat>) -> CGFloat {
    let diff = range.upperBound - range.lowerBound
    return CGFloat(arc4random_uniform(UInt32(diff + 1))) + range.lowerBound
  }
}
