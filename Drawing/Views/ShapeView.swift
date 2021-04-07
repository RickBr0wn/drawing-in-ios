//
//  ShapeView.swift
//  Drawing
//
//  Created by Rick Brown on 06/04/2021.
//

import SwiftUI

struct ShapeView: View {
  var body: some View {
    VStack {
      Path { path in
        path.move(to: CGPoint(x: 200, y: 100))
        path.addLine(to: CGPoint(x: 100, y: 300))
        path.addLine(to: CGPoint(x: 300, y: 300))
        path.addLine(to: CGPoint(x: 200, y: 100))
      }
      .stroke(Color.blue, style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
      
      Triangle()
        .stroke(Color.red, style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
        .frame(width: 200, height: 200)
      
      Arc(startAngle: .degrees(0), endAngle: .degrees(110), clockwise: true)
        .stroke(Color.blue, lineWidth: 10)
        .frame(width: 200, height: 200)
    }
  }
}

struct ShapeView_Previews: PreviewProvider {
  static var previews: some View {
    ShapeView()
  }
}
