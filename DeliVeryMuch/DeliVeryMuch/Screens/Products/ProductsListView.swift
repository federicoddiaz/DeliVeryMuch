//
//  ProductsListView.swift
//  DeliVeryMuch
//
//  Created by Federico Díaz on 06/02/2025.
//

import SwiftUI

struct ProductsListView: View {
    
    @StateObject private var viewModel = ProductsListViewModel()
    
    var body: some View {
        ZStack {
            NavigationStack {
                List(viewModel.products) { product in
                    ProductListCellView(product: product)
                }
                .navigationTitle("🍔 Products")
            }
            .onAppear {
                viewModel.getProducts()
            }
            
            if viewModel.isLoading {
                LoadingView()
            }
        }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title,
                  message: alertItem.message,
                  dismissButton: alertItem.dismissButton)
        }
    }
}

#Preview {
    ProductsListView()
}
