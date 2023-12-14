//
//  CategoryRow.swift
//  Landmarks
//
//  Created by user on 13.12.2023.
//

import SwiftUI

struct CategoryRow: View {
    var categoryName: String
    var items: [Landmark]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(categoryName)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(items) { item in
                        NavigationLink{
                            LandmarkDetail(landmark: item)
                        } label: {
                            CategoryItem(landmark: item)
                        }
                    }
                }
            }
        }
        .frame(height: 250)
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var previews: some View {
        CategoryRow(categoryName: ModelData().landmarks[0].category.rawValue, items: Array(ModelData().landmarks.prefix(4)))
    }
}
