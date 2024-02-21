//
//  Framework.swift
//  MarketApp
//
//  Created by Григорий Душин on 21.02.2024.
//

import Foundation

struct Category: Hashable {
    let name: String
    let imageName: String
}

struct CategoryMockData {
    
    static let categories = [
        Category(name: "Пекарни", imageName: "Frame 1"),
        Category(name: "Фастфуд", imageName: "Frame 2"),
        Category(name: "Азиатская кухня", imageName: "Frame 3"),
        Category(name: "Супы", imageName: "Frame 4")
    ]
}

