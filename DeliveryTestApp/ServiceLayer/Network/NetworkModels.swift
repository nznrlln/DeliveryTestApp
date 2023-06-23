//
//  NetworkModel.swift
//  DeliveryTestApp
//
//  Created by Нияз Нуруллин on 23.06.2023.
//

import Foundation

struct ProductsModel: Codable {
    let products: [ProductJSONData]
}

struct ProductJSONData: Codable {
    let productUID: Int
    let name: String
    let description: String
    let price: Int
    let imageURL:String
    let categoryUID: Int
    let categoryName: String
}

