//
//  ProductDetailView.swift
//  DeliVeryMuch
//
//  Created by Federico Díaz on 07/02/2025.
//

import SwiftUI

struct ProductDetailView: View {
    
    @EnvironmentObject var order: Order
    @Binding var product: Product?
    
    var body: some View {
        VStack {
            ProductRemoteImage(urlString: product?.imageURL ?? "")
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 225)
            
            VStack {
                Text(product?.name ?? "")
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Text(product?.description ?? "")
                    .font(.body)
                    .multilineTextAlignment(.center)
                    .padding()
                
                HStack(spacing: 40) {
                    NutritionInfoView(title: "Calories", value: product?.calories ?? 0)
                    NutritionInfoView(title: "Carbs", value: product?.carbs ?? 0)
                    NutritionInfoView(title: "Protein", value: product?.protein ?? 0)
                }
            }
            
            Spacer()
            
            Button {
                guard let product else { return }
                
                order.add(product)
                
                self.product = nil
            } label: {
                PriceButton(title: "$\(product?.price ?? 0.0, specifier: "%.2f") - Add to order")
            }
            .padding(.bottom, 25)
        }
        .frame(width: 300, height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 40)
        .overlay(Button {
            product = nil
        } label: {
            XDismissButton()
        }, alignment: .topTrailing)
    }
}

#Preview {
    ProductDetailView(product: .constant(MockData.sampleProduct))
}
