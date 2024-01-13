//
//  NetworkManager.swift
//  iOS Dev Assesment
//
//  Created by Jose Vargas on 1/12/24.
//

import Foundation

class NetworkManager {
    
    class func fetchData(url: String, completion:@escaping ([Product]?, String?) -> Void) {
        guard let urlString = URL(string: url) else { return }
        let task = URLSession.shared.dataTask(with: URLRequest(url: urlString)) { data, response, error in
            if let data {
                let dataModel = try? JSONDecoder().decode(Products.self, from: data)
                completion(dataModel?.products, nil)
            } else {
                completion(nil, "Error")
            }
        }
        task.resume()
    }
}
