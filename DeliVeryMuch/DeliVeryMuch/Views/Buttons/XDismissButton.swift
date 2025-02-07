//
//  XDismissButton.swift
//  DeliVeryMuch
//
//  Created by Federico Díaz on 07/02/2025.
//

import SwiftUI

struct XDismissButton: View {
    var body: some View {
        Image(systemName: "xmark.circle.fill")
            .imageScale(.large)
            .frame(width: 40, height: 40)
            .padding(5)
            .tint(.gray)
            .opacity(0.6)
    }
}

#Preview {
    XDismissButton()
}
