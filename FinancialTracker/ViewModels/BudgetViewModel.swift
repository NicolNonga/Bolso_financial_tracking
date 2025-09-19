//
//  BudgetViewModel.swift
//  FinancialTracker
//
//  Created by apple on 9/18/25.
//

import Foundation


class BugetViewModel: ObservableObject {
    
    @Published var budget = Budget(total: AppConfiguration.Defaults.defaultBudget, spent: 0, period: "September 2025")
    
}
