//
//  Market.swift
//  MarketApp
//
//  Created by Григорий Душин on 21.02.2024.
//

import Foundation

struct Market: Hashable {
    let name: String
    let imageName: String
    let description: String
}

struct MarketMockData {
    static let marketItems = [
        Market(name: "prod_1", imageName: "1", description: "description"),
        Market(name: "prod_2", imageName: "2", description: "description"),
        Market(name: "prod_3", imageName: "3", description: "description"),
        Market(name: "prod_4", imageName: "4", description: "description"),
        Market(name: "prod_5", imageName: "5", description: "description"),
        Market(name: "prod_6", imageName: "6", description: "description"),
        Market(name: "prod_7", imageName: "7", description: "description"),
        Market(name: "prod_8", imageName: "8", description: "description"),
        Market(name: "prod_9", imageName: "9", description: "description")
        ]
}
