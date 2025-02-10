//
//  EmptyOrderView.swift
//  DeliVeryMuch
//
//  Created by Federico Díaz on 10/02/2025.
//

import SwiftUI

struct EmptyOrderView: View {
    
    let imageName: String
    let message: String
    
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea(edges: .all)
            
            VStack {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 150)
                
                Text(message)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.secondary)
                    .padding()
            }
            .offset(y: -50)
        }
    }
}

#Preview {
    EmptyOrderView(imageName: "empty-order", message: "Test Message.\nI'm making it two lines for testing.")
}
