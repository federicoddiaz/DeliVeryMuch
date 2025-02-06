//
//  DeliVeryMuchTabView.swift
//  DeliVeryMuch
//
//  Created by Federico Díaz on 06/02/2025.
//

import SwiftUI

struct DeliVeryMuchTabView: View {
    var body: some View {
        TabView {
            ProductsListView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            
            OrderView()
                .tabItem {
                    Image(systemName: "bag")
                    Text("Order")
                }
            
            AccountView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Account")
                }
        }
        .tint(Color("brandPrimary"))
    }
}

#Preview {
    DeliVeryMuchTabView()
}
