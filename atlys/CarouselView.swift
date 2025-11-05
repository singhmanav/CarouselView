//
//  CarouselView.swift
//  atlys
//
//  Created by Manav on 04/11/25.
//

import SwiftUI

struct CarouselView: View {
  let images: [String]
  @State private var scrollId: Int? = nil
  @State private var screenWidth: CGFloat = UIScreen.main.bounds.width

  private var contentMargin: CGFloat {
    return screenWidth * 0.2
  }

  private var contentSpacing: CGFloat {
    return screenWidth * 0.05
  }

  private var carouselView: some View {
    ScrollView(.horizontal, showsIndicators: false) {
      HStack(spacing: contentSpacing) {
        ForEach(0..<images.count, id: \.self) { index in
          Image(images[index])
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .clipShape(.rect(cornerRadius: 12))
            .containerRelativeFrame(.horizontal, alignment: .center)
            .scrollTransition(.interactive) { content, phase in
              return content
                .scaleEffect(x: phase.isIdentity ? 1.25 : 1,
                             y: phase.isIdentity ? 1.25 : 1)
            }
            .zIndex( scrollId == index ? 1 : 0)
            .id(index)
        }
      }
      .scrollTargetLayout()
    }
    .contentMargins(contentMargin, for: .automatic)
    .scrollTargetBehavior(.viewAligned)
    .scrollPosition(id: $scrollId)
  }

  var body: some View {
    VStack(spacing: 20) {
      carouselView
        .frame(maxHeight: 400)
    }
    .onAppear {
      scrollId = images.count / 2
    }
  }
}
