//
//  SaturationAndBlur.swift
//  Drawing
//
//  Created by Rick Brown on 06/04/2021.
//

import SwiftUI

struct SaturationAndBlur: View {
  @State private var amount: CGFloat = 0
  
  var body: some View {
    VStack {
      Image("me")
        .resizable()
        .scaledToFit()
        .frame(width: 200, height: 200)
        .saturation(Double(amount))
        .blur(radius: (1 - amount) * 20)
      
      Slider(value: $amount)
        .padding()
    }
    .frame(maxWidth: .infinity, maxHeight: .infinity)
    .background(Color.black)
    .edgesIgnoringSafeArea(.all)
  }
}

struct SaturationAndBlur_Previews: PreviewProvider {
  static var previews: some View {
    SaturationAndBlur()
  }
}
