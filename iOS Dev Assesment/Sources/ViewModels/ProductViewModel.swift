//
//  ProductViewModel.swift
//  iOS Dev Assesment
//
//  Created by Jose Vargas on 1/12/24.
//

import Foundation

public class ProductViewModel {
    var products = [Product]()
    var sumEvenNumbers = 0
    
    func getProducts(completion:@escaping () -> Void) {
        NetworkManager.fetchData(url: Constants.API.productsApiUrl) { products, error in
            if let products {
                self.products = products
                completion()
            }
        }
    }
    
    func sumOfEvenNumbers(numbers: [Int]) -> Int {
        for number in numbers {
            if number % 2 == 0 {
                sumEvenNumbers = sumEvenNumbers + number
            }
        }
        return sumEvenNumbers
    }
}
