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
            Image("asian-flank-steak")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 90)
                .cornerRadius(8)
            
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
