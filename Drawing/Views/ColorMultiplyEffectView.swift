//
//  ColorMultiplyEffectView.swift
//  Drawing
//
//  Created by Rick Brown on 06/04/2021.
//

import SwiftUI

struct ColorMultiplyEffectView: View {
  var body: some View {
    VStack {
      ZStack {
        Image("me")
          .resizable()
          .aspectRatio(contentMode: .fill)
        
        Rectangle()
          .fill(Color.blue)
          .blendMode(.multiply)
      }
      .frame(width: 300, height: 400, alignment: .center)
      .clipped()
      
      Image("me")
        .resizable()
        .aspectRatio(contentMode: .fill)
        .colorMultiply(.blue)
        .frame(width: 300, height: 400, alignment: .center)
        .clipped()
    }
  }
}

struct ColorMultiplyEffectView_Previews: PreviewProvider {
  static var previews: some View {
    ColorMultiplyEffectView()
  }
}
