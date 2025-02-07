//
//  NetworkManager.swift
//  DeliVeryMuch
//
//  Created by Federico Díaz on 07/02/2025.
//

import Foundation

final class NetworkManager {
    
    static let shared = NetworkManager()
    
    static let baseURL = "https://seanallen-course-backend.herokuapp.com/swiftui-fundamentals/"
    private let productsURL = baseURL + "appetizers"
    
    private init() {}
    
    func getProducts(completed: @escaping (Result<[Product], DeliVeryError>) -> Void) {
            guard let url = URL(string: productsURL) else {
                completed(.failure(.invalidURL))
                return
            }
    
            let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, response, error in
                if let _ = error {
                    completed(.failure(.unableToComplete))
                    return
                }
    
                guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                    completed(.failure(.invalidResponse))
                    return
                }
    
                guard let data = data else {
                    completed(.failure(.invalidData))
                    return
                }
    
                do {
                    let decoder = JSONDecoder()
                    let decodedResponse = try decoder.decode(ProductResponse.self, from: data)
                    completed(.success(decodedResponse.request))
                } catch {
                    completed(.failure(.invalidData))
                }
            }
    
            task.resume()
        }
    
}
