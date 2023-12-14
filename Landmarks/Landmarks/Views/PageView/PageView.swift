//
//  PageView.swift
//  Landmarks
//
//  Created by user on 13.12.2023.
//

import SwiftUI

struct PageView<Page: View>: View {
    var pages: [Page]
    @State private var currentIndex: Int = 0
    
    var body: some View {
        ZStack (alignment: .bottomTrailing) {
            PageViewController(pages: pages, currentIndex: $currentIndex)
            PageControl(numberOfPages: pages.count, currentPage: $currentIndex)
                .frame(width: CGFloat(pages.count * 18))
                .padding(.trailing)
        }
        .aspectRatio(3 / 2, contentMode: .fit)
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(pages: ModelData().features.map { FeatureCard(landmark: $0) })
    }
}
