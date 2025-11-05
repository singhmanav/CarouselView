//
//  ContentView.swift
//  atlys
//
//  Created by Manav on 04/11/25.
//

import SwiftUI

struct ContentView: View {
  // Image names from Asset Catalog
  // Add your images to Assets.xcassets and use their names here
  // To add images: Right-click Assets.xcassets > New Image Set, then drag your images
  let carouselImages = [
    "image1",
    "image2",
    "image3",
    "image4",
    "image5"
  ]
  
  var body: some View {
    VStack(spacing: 0) {
      Spacer()
      CarouselView(images: carouselImages)
        .frame(maxHeight: .infinity)
      Spacer()
    }
  }
}

#Preview {
  ContentView()
}
