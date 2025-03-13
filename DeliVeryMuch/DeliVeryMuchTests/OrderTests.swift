//
//  OrderTests.swift
//  OrderTests
//
//  Created by Federico Díaz on 12/03/2025.
//

import XCTest
@testable import DeliVeryMuch

final class OrderTests: XCTestCase {
    
    func testOrderTotalCalculation() {
        // Arrange
        let orderItem1 = MockData.orderItemOne
        let orderItem2 = MockData.orderItemTwo
        let orderItem3 = MockData.orderItemThree
        
        let order = Order()
        order.add(orderItem1)
        order.add(orderItem2)
        order.add(orderItem3)
        
        // Act
        let total = order.totalPrice
        
        // Assert
        XCTAssertEqual(total, 29.97, "Order total price must be 29.97")
    }
    
    func testOrderRemoveItemUpdatesPrice() {
        // Arrange
        let orderItems = MockData.orderItems
        let order = Order()
        let indexSet = IndexSet(integer: 1)
        order.products.append(contentsOf: orderItems)
        
        // Act
        order.deleteItems(at: indexSet)
        let total = order.totalPrice
        
        // Assert
        XCTAssertEqual(total, 19.98, "Order total price must be 19.98")
    }

}
