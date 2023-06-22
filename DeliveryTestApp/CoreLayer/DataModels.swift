//
//  DataModels.swift
//  DeliveryTestApp
//
//  Created by Нияз Нуруллин on 22.06.2023.
//

import UIKit

struct CategoryModel {
    let name: String
}

struct ProductModel {
    let category: String
    let name: String
    let description: String
    let image: UIImage?
}
