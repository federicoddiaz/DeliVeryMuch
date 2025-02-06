//
//  ProductsListView.swift
//  DeliVeryMuch
//
//  Created by Federico Díaz on 06/02/2025.
//

import SwiftUI

struct ProductsListView: View {
    var body: some View {
        NavigationStack {
            List(MockData.products) { product in
                ProductListCellView(product: product)
            }
            .navigationTitle("🍔 Products")
        }
    }
}

#Preview {
    ProductsListView()
}
