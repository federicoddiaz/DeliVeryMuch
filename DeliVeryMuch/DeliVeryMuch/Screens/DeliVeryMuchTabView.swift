//
//  DeliVeryMuchTabView.swift
//  DeliVeryMuch
//
//  Created by Federico Díaz on 06/02/2025.
//

import SwiftUI

struct DeliVeryMuchTabView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        TabView {
            ProductsListView()
                .tabItem { Label("Home", systemImage: "house") }
            
            OrderView()
                .tabItem { Label("Order", systemImage: "bag") }
                .badge(order.products.count)
            
            AccountView()
                .tabItem { Label("Account", systemImage: "person") }
        }
        .tint(.brandPrimary)
    }
}
