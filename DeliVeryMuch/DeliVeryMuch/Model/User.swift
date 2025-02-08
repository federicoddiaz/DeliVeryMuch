//
//  User.swift
//  DeliVeryMuch
//
//  Created by Federico Díaz on 08/02/2025.
//
import Foundation

struct User: Codable {
    var firstName       = ""
    var lastName        = ""
    var email           = ""
    var dateOfBirth     = Date()
    var extraNapkins    = false
    var frequentRefills = false
}
