//
//  ProductsListViewModel.swift
//  DeliVeryMuch
//
//  Created by Federico Díaz on 07/02/2025.
//

import SwiftUI

@MainActor final class ProductsListViewModel: ObservableObject {
    
    @Published var products: [Product] = []
    @Published var alertItem: AlertItem?
    @Published var isLoading: Bool = false
    @Published var selectedProduct: Product?
    
    func getProducts() async {
        isLoading = true
        
        Task {
            do {
                products = try await NetworkManager.shared.getProducts()
                isLoading = false
            } catch {
                
                if let deliveryError = error as? DeliVeryError {
                    switch deliveryError {
                    case .invalidURL:
                        alertItem = AlertContext.invalidURL
                    case .invalidResponse:
                        alertItem = AlertContext.invalidResponse
                    case .invalidData:
                        alertItem = AlertContext.invalidData
                    case .unableToComplete:
                        alertItem = AlertContext.unableToComplete
                    }
                } else {
                    alertItem = AlertContext.invalidResponse
                }
                isLoading = false
            }
        }
    }
}
