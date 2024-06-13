import SwiftUI

/* lilo got stitched:
rgb(168, 216, 234)
rgb(168, 216, 234)
rgb(170, 150, 218)
rgb(255, 255, 210)

military moss:
rgb(255, 245, 235)
rgb(222, 237, 240)
rgb(244, 199, 171)
rgb(178, 184, 163)

floral b-okay:
rgb(130, 148, 196)
rgb(172, 177, 214)
rgb(219, 223, 234)
rgb(255, 234, 210)

vanilla icedream:
rgb(255, 172, 172)
rgb(255, 191, 169)
rgb(255, 235, 180)
rgb(251, 255, 177)

blueberry fancake:
rgb(246, 244, 235)
rgb(145, 200, 228)
rgb(116, 155, 194)
rgb(70, 130, 169)

muted banana:
rgb(255, 172, 172)
rgb(255, 191, 169)
rgb(255, 235, 180)
rgb(251, 255, 177)

peach:
rgb(209, 77, 114)
rgb(255, 171, 171)
rgb(252, 200, 209)
rgb(254, 242, 244)

coral:
rgb(209, 77, 114)
rgb(255, 171, 171)
rgb(252, 200, 209)
rgb(254, 242, 244)

unsuitable pink:
rgb(254, 242, 244)
rgb(251, 232, 231)
rgb(251, 232, 231)
rgb(255, 196, 208)

polluted sunset:
rgb(255, 182, 185)
rgb(250, 227, 217)
rgb(187, 222, 214)
rgb(138, 198, 209)

mango space:
rgb(255, 187, 204)
rgb(255, 204, 204)
rgb(255, 221, 204)
rgb(255, 221, 204)

fotheringhay castle:
rgb(255, 238, 204)
rgb(255, 221, 204)
rgb(255, 204, 204)
rgb(255, 204, 204)

cyberpunk sorrow:
rgb(72, 70, 109)
rgb(61, 132, 168)
rgb(61, 132, 168)
rgb(70, 205, 207)

navy squeal:
rgb(171, 237, 216)
rgb(39, 73, 109)
rgb(39, 73, 109)
rgb(0, 168, 204)

for narnia:
rgb(255, 200, 200)
rgb(255, 153, 153)
rgb(68, 79, 90)
rgb(68, 79, 90)

dopamine pistol:
rgb(255, 185, 185)
rgb(255, 221, 210)
rgb(255, 172, 199)
rgb(255, 141, 199)

sugarplum hairy:
rgb(222, 245, 229)
rgb(222, 245, 229)
rgb(188, 234, 213)
rgb(142, 195, 176)

yoda frodo:
rgb(168, 216, 234)
rgb(170, 150, 218)
rgb(170, 150, 218)
rgb(255, 255, 210)

spicy salad:
rgb(227, 253, 253)
rgb(203, 241, 245)
rgb(166, 227, 233)
rgb(113, 201, 206)

beached party:
rgb(168, 230, 207)
rgb(220, 237, 193)
rgb(255, 211, 182)
rgb(255, 170, 165)

sunburnt germans:
rgb(255, 170, 165)
rgb(234, 84, 85)
rgb(240, 123, 63)
rgb(255, 212, 96)

ur it:
rgb(255, 245, 228)
rgb(255, 196, 196)
rgb(238, 105, 131)
rgb(133, 14, 53)

ikea mugs:
rgb(255, 207, 223)
rgb(254, 253, 202)
rgb(224, 249, 181)
rgb(165, 222, 229)

gta san angriest:
rgb(255, 213, 205)
rgb(255, 213, 205)
rgb(195, 174, 214)
rgb(134, 117, 169)

hazy formula:
rgb(222, 252, 249)
rgb(202, 222, 252)
rgb(195, 190, 240)
rgb(195, 190, 240)

norwegian red:
rgb(177, 178, 255)
rgb(170, 196, 255)
rgb(210, 218, 255)
rgb(238, 241, 255) */

struct ColorPalette {
  let name: String
  let colors: [Color]
}

let colorPalettes: [ColorPalette] = [
  ColorPalette(
    name: "lilo got stitched",
    colors: [
      RandomColors.colorFromRGB(168, 216, 234),
      RandomColors.colorFromRGB(168, 216, 234),
      RandomColors.colorFromRGB(170, 150, 218),
      RandomColors.colorFromRGB(255, 255, 210),
    ]
  ),
  ColorPalette(
    name: "military moss",
    colors: [
      RandomColors.colorFromRGB(255, 245, 235),
      RandomColors.colorFromRGB(222, 237, 240),
      RandomColors.colorFromRGB(244, 199, 171),
      RandomColors.colorFromRGB(178, 184, 163),
    ]
  ),
  ColorPalette(
    name: "floral b-okay",
    colors: [
      RandomColors.colorFromRGB(130, 148, 196),
      RandomColors.colorFromRGB(172, 177, 214),
      RandomColors.colorFromRGB(219, 223, 234),
      RandomColors.colorFromRGB(255, 234, 210),
    ]
  ),
  ColorPalette(
    name: "vanilla icedream",
    colors: [
      RandomColors.colorFromRGB(255, 172, 172),
      RandomColors.colorFromRGB(255, 191, 169),
      RandomColors.colorFromRGB(255, 235, 180),
      RandomColors.colorFromRGB(251, 255, 177),
    ]
  ),
  ColorPalette(
    name: "blueberry fancake",
    colors: [
      RandomColors.colorFromRGB(246, 244, 235),
      RandomColors.colorFromRGB(145, 200, 228),
      RandomColors.colorFromRGB(116, 155, 194),
      RandomColors.colorFromRGB(70, 130, 169),
    ]
  ),
  ColorPalette(
    name: "muted banana",
    colors: [
      RandomColors.colorFromRGB(255, 172, 172),
      RandomColors.colorFromRGB(255, 191, 169),
      RandomColors.colorFromRGB(255, 235, 180),
      RandomColors.colorFromRGB(251, 255, 177),
    ]
  ),
  ColorPalette(
    name: "peach",
    colors: [
      RandomColors.colorFromRGB(209, 77, 114),
      RandomColors.colorFromRGB(255, 171, 171),
      RandomColors.colorFromRGB(252, 200, 209),
      RandomColors.colorFromRGB(254, 242, 244),
    ]
  ),
  ColorPalette(
    name: "coral",
    colors: [
      RandomColors.colorFromRGB(209, 77, 114),
      RandomColors.colorFromRGB(255, 171, 171),
      RandomColors.colorFromRGB(252, 200, 209),
      RandomColors.colorFromRGB(254, 242, 244),
    ]
  ),
  ColorPalette(
    name: "unsuitable pink",
    colors: [
      RandomColors.colorFromRGB(254, 242, 244),
      RandomColors.colorFromRGB(251, 232, 231),
      RandomColors.colorFromRGB(251, 232, 231),
      RandomColors.colorFromRGB(255, 196, 208),
    ]
  ),
  ColorPalette(
    name: "polluted sunset",
    colors: [
      RandomColors.colorFromRGB(255, 182, 185),
      RandomColors.colorFromRGB(250, 227, 217),
      RandomColors.colorFromRGB(187, 222, 214),
      RandomColors.colorFromRGB(138, 198, 209),
    ]
  ),
  ColorPalette(
    name: "mango space",
    colors: [
      RandomColors.colorFromRGB(255, 187, 204),
      RandomColors.colorFromRGB(255, 204, 204),
      RandomColors.colorFromRGB(255, 221, 204),
      RandomColors.colorFromRGB(255, 221, 204),
    ]
  ),
  ColorPalette(
    name: "fotheringhay castle",
    colors: [
      RandomColors.colorFromRGB(255, 238, 204),
      RandomColors.colorFromRGB(255, 221, 204),
      RandomColors.colorFromRGB(255, 204, 204),
      RandomColors.colorFromRGB(255, 204, 204),
    ]
  ),
  ColorPalette(
    name: "cyberpunk sorrow",
    colors: [
      RandomColors.colorFromRGB(72, 70, 109),
      RandomColors.colorFromRGB(61, 132, 168),
      RandomColors.colorFromRGB(61, 132, 168),
      RandomColors.colorFromRGB(70, 205, 207),
    ]
  ),
  ColorPalette(
    name: "navy squeal",
    colors: [
      RandomColors.colorFromRGB(171, 237, 216),
      RandomColors.colorFromRGB(39, 73, 109),
      RandomColors.colorFromRGB(39, 73, 109),
      RandomColors.colorFromRGB(0, 168, 204),
    ]
  ),
  ColorPalette(
    name: "for narnia",
    colors: [
      RandomColors.colorFromRGB(255, 200, 200),
      RandomColors.colorFromRGB(255, 153, 153),
      RandomColors.colorFromRGB(68, 79, 90),
      RandomColors.colorFromRGB(68, 79, 90),
    ]
  ),
  ColorPalette(
    name: "dopamine pistol",
    colors: [
      RandomColors.colorFromRGB(255, 185, 185),
      RandomColors.colorFromRGB(255, 221, 210),
      RandomColors.colorFromRGB(255, 172, 199),
      RandomColors.colorFromRGB(255, 141, 199),
    ]
  ),
  ColorPalette(
    name: "sugarplum hairy",
    colors: [
      RandomColors.colorFromRGB(222, 245, 229),
      RandomColors.colorFromRGB(222, 245, 229),
      RandomColors.colorFromRGB(188, 234, 213),
      RandomColors.colorFromRGB(142, 195, 176),
    ]
  ),
  ColorPalette(
    name: "yoda frodo",
    colors: [
      RandomColors.colorFromRGB(168, 216, 234),
      RandomColors.colorFromRGB(170, 150, 218),
      RandomColors.colorFromRGB(170, 150, 218),
      RandomColors.colorFromRGB(255, 255, 210),
    ]
  ),
  ColorPalette(
    name: "spicy salad",
    colors: [
      RandomColors.colorFromRGB(227, 253, 253),
      RandomColors.colorFromRGB(203, 241, 245),
      RandomColors.colorFromRGB(166, 227, 233),
      RandomColors.colorFromRGB(113, 201, 206),
    ]
  ),
  ColorPalette(
    name: "beached party",
    colors: [
      RandomColors.colorFromRGB(168, 230, 207),
      RandomColors.colorFromRGB(220, 237, 193),
      RandomColors.colorFromRGB(255, 211, 182),
      RandomColors.colorFromRGB(255, 170, 165),
    ]
  ),
  ColorPalette(
    name: "sunburnt germans",
    colors: [
      RandomColors.colorFromRGB(255, 170, 165),
      RandomColors.colorFromRGB(234, 84, 85),
      RandomColors.colorFromRGB(240, 123, 63),
      RandomColors.colorFromRGB(255, 212, 96),
    ]
  ),
  ColorPalette(
    name: "ur it",
    colors: [
      RandomColors.colorFromRGB(255, 245, 228),
      RandomColors.colorFromRGB(255, 196, 196),
      RandomColors.colorFromRGB(238, 105, 131),
      RandomColors.colorFromRGB(133, 14, 53),
    ]
  ),
  ColorPalette(
    name: "ikea mugs",
    colors: [
      RandomColors.colorFromRGB(255, 207, 223),
      RandomColors.colorFromRGB(254, 253, 202),
      RandomColors.colorFromRGB(224, 249, 181),
      RandomColors.colorFromRGB(165, 222, 229),
    ]
  ),

  ColorPalette(
    name: "gta san angriest",
    colors: [
      RandomColors.colorFromRGB(255, 213, 205),
      RandomColors.colorFromRGB(255, 213, 205),
      RandomColors.colorFromRGB(195, 174, 214),
      RandomColors.colorFromRGB(134, 117, 169),
    ]
  ),
  ColorPalette(
    name: "hazy formula",
    colors: [
      RandomColors.colorFromRGB(222, 252, 249),
      RandomColors.colorFromRGB(202, 222, 252),
      RandomColors.colorFromRGB(195, 190, 240),
      RandomColors.colorFromRGB(195, 190, 240),
    ]
  ),
  ColorPalette(
    name: "norwegian red",
    colors: [
      RandomColors.colorFromRGB(177, 178, 255),
      RandomColors.colorFromRGB(170, 196, 255),
      RandomColors.colorFromRGB(210, 218, 255),
      RandomColors.colorFromRGB(238, 241, 255),
    ]
  ),

]
