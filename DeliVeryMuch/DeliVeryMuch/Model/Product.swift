//
//  Product.swift
//  DeliVeryMuch
//
//  Created by Federico Díaz on 06/02/2025.
//

import Foundation

struct Product: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct ProductResponse: Decodable {
    let request: [Product]
}

struct MockData {
    
    static let sampleProduct      = Product(id: 0001,
                                            name: "Product Test",
                                            description: "This is the description for my product. It's nice!",
                                            price: 9.99,
                                            imageURL: "",
                                            calories: 10,
                                            protein: 20,
                                            carbs: 30)
    
    static let products: [Product] = Array(repeating: sampleProduct, count: 4)
    
    
    static let orderItemOne        = Product(id: 0001,
                                             name: "Product Test One",
                                             description: "This is the description for my product. It's nice!",
                                             price: 9.99,
                                             imageURL: "",
                                             calories: 10,
                                             protein: 20,
                                             carbs: 30)
    
    static let orderItemTwo        = Product(id: 0002,
                                             name: "Product Test Two",
                                             description: "This is the description for my product. It's nice!",
                                             price: 9.99,
                                             imageURL: "",
                                             calories: 10,
                                             protein: 20,
                                             carbs: 30)
    
    
    static let orderItemThree      = Product(id: 0003,
                                             name: "Product Test Three",
                                             description: "This is the description for my product. It's nice!",
                                             price: 9.99,
                                             imageURL: "",
                                             calories: 10,
                                             protein: 20,
                                             carbs: 30)
    
    static let orderItems          = [orderItemOne, orderItemTwo, orderItemThree]
}
