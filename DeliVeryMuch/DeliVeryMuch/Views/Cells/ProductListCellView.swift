//
//  ProductListCellView.swift
//  DeliVeryMuch
//
//  Created by Federico Díaz on 06/02/2025.
//

import SwiftUI

struct ProductListCellView: View {
    
    let product: Product
    
    var body: some View {
        HStack {
            AsyncImage(url: URL(string: product.imageURL)) { image in
                image
                    .cellImageModifier()
                    
            } placeholder: {
                Image("food-placeholder")
                    .cellImageModifier()
            }
            
            VStack(alignment: .leading, spacing: 5) {
                Text(product.name)
                    .font(.title2)
                    .fontWeight(.medium)
                
                Text("$\(product.price, specifier: "%.2f")")
                    .foregroundStyle(.secondary)
                    .fontWeight(.semibold)
            }
            .padding(.leading)
        }
    }
}

#Preview {
    ProductListCellView(product: MockData.sampleProduct)
}
