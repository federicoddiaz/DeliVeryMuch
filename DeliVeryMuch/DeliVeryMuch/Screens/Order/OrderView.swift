//
//  OrderView.swift
//  DeliVeryMuch
//
//  Created by Federico Díaz on 06/02/2025.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    List {
                        ForEach(order.products) { product in
                            ProductListCellView(product: product)
                        }
                        .onDelete(perform: order.deleteItems)
                    }
                    .listStyle(PlainListStyle())
                    
                    Button {
                        print("Order placed")
                    } label: {
                        Text("$\(order.totalPrice, specifier: "%.2f") - Place Order")
                    }
                    .modifier(StandardButtonStyle())
                    .padding(.bottom, 25)
                }
                
                if order.products.isEmpty {
                    EmptyOrderView(imageName: "empty-order",
                                   message: "You have no products in your order.\nPlease add some to continue!")
                }
            }
            .navigationTitle("Order")
        }
    }
}

#Preview {
    OrderView()
}
