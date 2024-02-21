//
//  MarketView.swift
//  MarketApp
//
//  Created by Григорий Душин on 21.02.2024.
//

import SwiftUI

struct MarketView: View {
    let columns: [GridItem] = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach(MarketMockData.marketItems, id: \.self) { marketItems in
                    MarketTitleView(name: marketItems.name, imageName: marketItems.imageName)
                }
            }
            .padding(.horizontal, 10)
        }
    }
}

#Preview {
    MarketView()
}

struct MarketTitleView : View {
    let name : String
    let imageName : String
    
    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.horizontal, 5)
                .cornerRadius(20)
            Text(name)
                .font(.title2)
                .fontWeight(.medium)
                .foregroundColor(Color(.label))
                .scaledToFit()
                .minimumScaleFactor(0.6)
                .padding(.horizontal, 10)
            
        }
        
    }
}
