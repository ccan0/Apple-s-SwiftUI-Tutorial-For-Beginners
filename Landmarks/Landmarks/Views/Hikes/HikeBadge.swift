//
//  HikeBadge.swift
//  Landmarks
//
//  Created by user on 13.12.2023.
//

import SwiftUI

struct HikeBadge: View {
    var name: String
    
    var body: some View {
        VStack{
            Badge()
                .frame(width: 300, height: 300)
                .scaleEffect(1.0 / 3.0)
                .frame(width: 100, height: 100)
            
            Text(name)
                .font(.caption)
                .accessibilityLabel("Badge For \(name)")
        }
    }
}

struct HikeBadge_Previews: PreviewProvider {
    static var previews: some View {
        HikeBadge(name: "Preview Test")
    }
}
