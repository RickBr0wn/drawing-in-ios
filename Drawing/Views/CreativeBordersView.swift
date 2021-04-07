//
//  CreativeBordersView.swift
//  Drawing
//
//  Created by Rick Brown on 06/04/2021.
//

import SwiftUI

struct CreativeBordersView: View {
  var body: some View {
    VStack {
      Text("Hello, World!")
        .frame(width: 200, height: 200)
        .border(ImagePaint(image: Image("Example"), scale: 0.2), width: 30)
      
      Capsule()
        .strokeBorder(ImagePaint(image: Image("Example"), scale: 0.1), lineWidth: 20)
        .frame(width: 200, height: 200, alignment: .center)
    }
    
  }
}

struct CreativeBordersView_Previews: PreviewProvider {
  static var previews: some View {
    CreativeBordersView()
  }
}
