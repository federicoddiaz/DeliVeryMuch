//
//  Order.swift
//  DeliVeryMuch
//
//  Created by Federico Díaz on 10/02/2025.
//

import SwiftUI

final class Order: ObservableObject {
    
    @Published var products: [Product] = []
    
    var totalPrice: Double {
        products.reduce(0) { $0 + $1.price }
    }
    
    func add(_ product: Product) {
        products.append(product)
    }
    
    func deleteItems(at offsets: IndexSet) {
        products.remove(atOffsets: offsets)
    }
}
