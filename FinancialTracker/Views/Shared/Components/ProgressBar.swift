//
//  ProgressBar.swift
//  FinancialTracker
//
//  Created by apple on 9/18/25.
//

import SwiftUI

struct ProgressBar: View {
    var value: Double = 0
    var tint: Color = .blue
    var body: some View {
   
        
        ProgressView(value: value)
            .progressViewStyle(LinearProgressViewStyle(tint: tint))
            .frame(height: 8)
            .clipShape(Capsule())
    }
}

#Preview {
    
    VStack(spacing: 20){
        ProgressBar(value: 0.25)
        ProgressBar(value: 0.50, tint: .green)
        ProgressBar(value: 0.90, tint: .red)
    }
    .padding()
    
}
