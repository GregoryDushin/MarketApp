//
//  CategoryView.swift
//  MarketApp
//
//  Created by Григорий Душин on 21.02.2024.
//

import SwiftUI

struct CategoryView: View {
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 10) {
                ForEach(MockData.categories, id: \.self) { category in
                    CategoryTitleView(name: category.name, imageName: category.imageName)
                }
            }
            .padding(.horizontal, 5)
        }
    }
}

#Preview {
    CategoryView()
}

struct CategoryTitleView : View {
    let name : String
    let imageName : String
    
    var body: some View {
            ZStack(alignment: .topLeading) {
                Image(imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.horizontal, 5)
                    .cornerRadius(20)
                Text(name)
                    .padding(EdgeInsets(top: 20, leading: 20, bottom: 0, trailing: 0))
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundColor(Color(.label))
            }
    }
    
}
