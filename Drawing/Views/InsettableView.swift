//
//  InsettableView.swift
//  Drawing
//
//  Created by Rick Brown on 06/04/2021.
//

import SwiftUI

struct InsettableView: View {
  var body: some View {
    Arc(startAngle: .degrees(0), endAngle: .degrees(280), clockwise: false)
      .strokeBorder(Color.blue, lineWidth: 40)
  }
}

struct InsettableView_Previews: PreviewProvider {
  static var previews: some View {
    InsettableView()
  }
}
