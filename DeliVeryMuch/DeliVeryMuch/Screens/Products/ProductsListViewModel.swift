//
//  ProductsListViewModel.swift
//  DeliVeryMuch
//
//  Created by Federico Díaz on 07/02/2025.
//

import SwiftUI

final class ProductsListViewModel: ObservableObject {
    
    @Published var products: [Product] = []
    @Published var alertItem: AlertItem?
    @Published var isLoading: Bool = false
    
    func getProducts() {
        isLoading = true
        NetworkManager.shared.getProducts { result in
            DispatchQueue.main.async { [self] in
                
                self.isLoading = false
                
                switch result {
                case .success(let products):
                    self.products = products
                    
                case .failure(let error):
                    switch error {
                    case .invalidResponse:
                        alertItem = AlertContext.invalidResponse
                        
                    case .invalidURL:
                        alertItem = AlertContext.invalidURL
                        
                    case .invalidData:
                        alertItem = AlertContext.invalidData
                        
                    case .unableToComplete:
                        alertItem = AlertContext.unableToComplete
                        
                    }
                }
            }
        }
    }
}
