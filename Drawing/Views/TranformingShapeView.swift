//
//  TranformingShapeView.swift
//  Drawing
//
//  Created by Rick Brown on 06/04/2021.
//

import SwiftUI

// 3.141 radians = 90 degress?
struct Flower: Shape {
  var petalOffset: Double = -20
  var petalWidth: Double = 100
  
  func path(in rect: CGRect) -> Path {
    var path = Path()
    
    for number in stride(from: 0, to: CGFloat.pi * 2, by: CGFloat.pi / 8) {
      let rotation = CGAffineTransform(rotationAngle: number)
      
      let position = rotation.concatenating(CGAffineTransform(translationX: rect.width / 2, y: rect.height / 2))
      
      let originalPetal = Path(ellipseIn: CGRect(x: CGFloat(petalOffset), y: 0, width: CGFloat(petalWidth), height: rect.width / 2))
      
      let rotatedPetal = originalPetal.applying(position)
      
      path.addPath(rotatedPetal)
    }
    
    return path
  }
}

struct TranformingShapeView: View {
  @State private var petalOffset: Double = -20
  @State private var petalWidth: Double = 100
  
  var body: some View {
    VStack {
      // odd/even fill
      Flower(petalOffset: petalOffset, petalWidth: petalWidth)
        .fill(Color.red, style: FillStyle(eoFill: true))
      
      Text("Offset")
      Slider(value: $petalOffset, in: -40...40)
      
      Text("Width")
      Slider(value: $petalWidth, in: 0...100)
    }
  }
}

struct TranformingShapeView_Previews: PreviewProvider {
  static var previews: some View {
    TranformingShapeView()
  }
}
