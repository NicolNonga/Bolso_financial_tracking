//
//  AppConfiguration.swift
//  FinancialTracker
//
//  Created by apple on 9/18/25.
//

import Foundation

struct AppConfiguration {
    
    static let appName = "pocket"
    static let version = "1.0.0"
    static let buildNumber = "1"
    
    
    struct Defaults {
        static let defaultBudget: Double = 2000.0
        static let currencySymbol: String = "$"
        static let dateFormat: String = "MMM dd, yyyy"
    }
}
