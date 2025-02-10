//
//  DeliVeryMuchApp.swift
//  DeliVeryMuch
//
//  Created by Federico Díaz on 06/02/2025.
//

import SwiftUI

@main
struct DeliVeryMuchApp: App {
    
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            DeliVeryMuchTabView().environmentObject(order)
        }
    }
}
