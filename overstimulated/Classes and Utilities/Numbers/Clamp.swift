func clamp(value: Double, minValue: Double, maxValue: Double) -> Double {
  return min(max(value, minValue), maxValue)
}
