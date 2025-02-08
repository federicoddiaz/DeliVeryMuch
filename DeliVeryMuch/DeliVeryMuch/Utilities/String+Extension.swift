//
//  String+Extension.swift
//  DeliVeryMuch
//
//  Created by Federico Díaz on 08/02/2025.
//

import Foundation

extension String {
    var isValidEmail: Bool {
        let emailFormat     = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPredicate  = NSPredicate(format: "SELF MATCHES %@", emailFormat)
        return emailPredicate.evaluate(with: self)
    }
}
