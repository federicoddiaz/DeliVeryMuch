//
//  CustomModifiers.swift
//  DeliVeryMuch
//
//  Created by Federico Díaz on 10/02/2025.
//

import SwiftUI

struct StandardButtonStyle: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .buttonStyle(.bordered)
            .tint(.brandPrimary)
            .controlSize(.large)
    }
    
}
