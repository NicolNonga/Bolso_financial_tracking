//
//  Buget.swift
//  FinancialTracker
//
//  Created by apple on 9/18/25.
//

import Foundation

struct Budget: Identifiable {
    let id = UUID()
    var total: Double
    var spent: Double
    var period: String
    
    
}
