//
//  AccountTests.swift
//  DeliVeryMuchTests
//
//  Created by Federico Díaz on 12/03/2025.
//

import XCTest
@testable import DeliVeryMuch

final class AccountTests: XCTestCase {

    func testInvalidEmailRegistration() {
        // Arrange
        let invalidEmails = ["user@", "user.com", "user@com", "@domain.com", "user@domain,com"]
        
        for email in invalidEmails {
            // Act
            let isValid = email.isValidEmail
            
            // Assert
            XCTAssertFalse(isValid, "\(email) should not be valid.")
        }
    }
    
    func testValidEmailRegistration() {
        // Arrange
        let validEmails = ["user@example.com", "test123@mail.co", "name.lastname@domain.com"]
        
        for email in validEmails {
            // Act
            let isValid = email.isValidEmail
            
            // Assert
            XCTAssertTrue(isValid, "\(email) should be valid.")
        }
    }
    
    func testValidFormData() {
        // Arrange
        let viewModel = AccountViewModel()
        viewModel.user = User(firstName: "John", lastName: "Doe", email: "user@example.com", dateOfBirth: Date().eighteenYearsAgo)
        
        // Act
        let isValid = viewModel.isValidForm
        
        // Assert
        XCTAssertTrue(isValid, "Form fields should be valid.")
    }
    
    func testInvalidFormName() {
        // Arrange
        let viewModel = AccountViewModel()
        viewModel.user = User(firstName: "", lastName: "", email: "user@example.com", dateOfBirth: Date().eighteenYearsAgo)
        
        // Act
        let isValid = viewModel.isValidForm
        
        // Assert
        XCTAssertFalse(isValid, "Form fields should not be valid.")
    }
    
    func testInvalidFormEmail() {
        // Arrange
        let viewModel = AccountViewModel()
        viewModel.user = User(firstName: "John", lastName: "Doe", email: "user@examplecom", dateOfBirth: Date().eighteenYearsAgo)
        
        // Act
        let isValid = viewModel.isValidForm
        
        // Assert
        XCTAssertFalse(isValid, "Form fields should not be valid.")
    }

    func testInvalidFormDateOfBirth() {
        // Arrange
        let viewModel = AccountViewModel()
        viewModel.user = User(firstName: "John", lastName: "Doe", email: "user@example.com", dateOfBirth: Date())
        
        // Act
        let isValid = viewModel.isValidForm
        
        // Assert
        XCTAssertFalse(isValid, "Form fields should not be valid.")
    }
}
