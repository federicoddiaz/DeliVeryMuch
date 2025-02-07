//
//  ProductDetailView.swift
//  DeliVeryMuch
//
//  Created by Federico Díaz on 07/02/2025.
//

import SwiftUI

struct ProductDetailView: View {
    
    let product: Product
    
    var body: some View {
        VStack {
            ProductRemoteImage(urlString: product.imageURL)
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 225)
            
            VStack {
                Text(product.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Text(product.description)
                    .font(.body)
                    .multilineTextAlignment(.center)
                    .padding()
                
                HStack(spacing: 40) {
                    VStack(spacing: 5) {
                        Text("Calories")
                            .bold()
                            .font(.caption)
                        
                        Text("\(product.calories)")
                            .foregroundStyle(.secondary)
                            .fontWeight(.semibold)
                            .italic()
                    }
                    
                    VStack(spacing: 5) {
                        Text("Carbs")
                            .bold()
                            .font(.caption)
                        
                        Text("\(product.carbs)")
                            .foregroundStyle(.secondary)
                            .fontWeight(.semibold)
                            .italic()
                    }
                    
                    VStack(spacing: 5) {
                        Text("Protein")
                            .bold()
                            .font(.caption)
                        
                        Text("\(product.protein)")
                            .foregroundStyle(.secondary)
                            .fontWeight(.semibold)
                            .italic()
                    }
                }
            }
            
            Spacer()
            
            Button {
                print("Added to cart")
            } label: {
                Text("$\(product.price, specifier: "%.2f") - Add to order")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .frame(width: 260, height: 50)
                    .foregroundStyle(.white)
                    .background(.brandPrimary)
                    .cornerRadius(10)
            }
            .padding(.bottom, 25)
        }
        .frame(width: 300, height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 40)
        .overlay(Button {
            
        } label: {
            Image(systemName: "xmark.circle.fill")
                .imageScale(.large)
                .frame(width: 40, height: 40)
                .padding(5)
                .tint(.gray)
                .opacity(0.6)
        }, alignment: .topTrailing)
    }
}

#Preview {
    ProductDetailView(product: MockData.sampleProduct)
}
