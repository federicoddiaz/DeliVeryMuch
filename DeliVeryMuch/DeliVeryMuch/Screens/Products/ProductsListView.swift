//
//  ProductsListView.swift
//  DeliVeryMuch
//
//  Created by Federico Díaz on 06/02/2025.
//

import SwiftUI

struct ProductsListView: View {
    
    @StateObject private var viewModel = ProductsListViewModel()
    @State private var selectedProduct: Product?
    
    var body: some View {
        ZStack {
            NavigationStack {
                List(viewModel.products) { product in
                    ProductListCellView(product: product)
                        .onTapGesture {
                            selectedProduct = product
                        }
                }
                .navigationTitle("🍔 Products")
                .disabled(selectedProduct != nil)
            }
            .onAppear {
                viewModel.getProducts()
            }
            .blur(radius: selectedProduct != nil ? 10 : 0)
            
            if selectedProduct != nil {
                ProductDetailView(product: $selectedProduct)
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
