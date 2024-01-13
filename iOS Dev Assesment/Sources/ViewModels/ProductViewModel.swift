//
//  ProductViewModel.swift
//  iOS Dev Assesment
//
//  Created by Jose Vargas on 1/12/24.
//

import Foundation

class ProductViewModel {
    var products = [Product]()
    
    func getProducts(completion:@escaping () -> Void) {
        NetworkManager.fetchData(url: Constants.API.productsApiUrl) { products, error in
            if let products {
                self.products = products
                completion()
            }
        }
    }
}
