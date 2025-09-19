//
//  BugetPeriod.swift
//  FinancialTracker
//
//  Created by apple on 9/19/25.
//

enum BudgetPeriod: String, CaseIterable, Identifiable {
    case month = "Mensalmente"
    case sixMonths = "6 Meses"
    case year = "Anualmente"
    
    var id: String { self.rawValue }
}
