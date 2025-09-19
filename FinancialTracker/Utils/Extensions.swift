//
//  Extensions.swift
//  FinancialTracker
//
//  Created by apple on 9/18/25.
//

import Foundation

extension Double {
    func asCurrency() -> String {
        return String(format: "$%.2f", self)
    }
}

extension Date {
    func formattedString(_ format: String = "MMM dd, yyyy") -> String {
        
        let formatter = DateFormatter()
        formatter.dateFormat = format
        
        return formatter.string(from: self)
    }
}
