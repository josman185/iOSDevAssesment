//
//  Product.swift
//  iOS Dev Assesment
//
//  Created by Jose Vargas on 1/12/24.
//

import Foundation

// MARK: - Product
struct Product: Codable {
    let title, description: String
    let price: Int
}

struct Products: Codable {
    let products: [Product]
    let total: Int
}
