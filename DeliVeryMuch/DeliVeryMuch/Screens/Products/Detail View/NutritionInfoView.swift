//
//  NutritionInfoView.swift
//  DeliVeryMuch
//
//  Created by Federico Díaz on 07/02/2025.
//

import SwiftUI

struct NutritionInfoView: View {
    
    let title: String
    let value: String
    
    var body: some View {
        VStack(spacing: 5) {
            Text(title)
                .bold()
                .font(.caption)
            
            Text(value)
                .foregroundStyle(.secondary)
                .fontWeight(.semibold)
                .italic()
        }
    }
}

#Preview {
    NutritionInfoView(title: "Calories", value: "\(MockData.sampleProduct.calories)")
}
