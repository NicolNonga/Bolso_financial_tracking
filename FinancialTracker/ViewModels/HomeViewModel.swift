//
//  HomeViewModel.swift
//  FinancialTracker
//
//  Created by apple on 9/19/25.
//

import Foundation

class HomeViewModel : ObservableObject {
    
    @Published var budget: Double
    @Published var spent: Double
    @Published var transactions: [Transaction]
    
    init(scenario: Scenario = .defaultScenario){
        
        switch scenario {
        case.defaultScenario:
            self.budget = 9000.0
            self.spent = 850.0
            self.transactions = [
                
                Transaction(
                     merchant: "Starbucks",
                     amount: 5.50,
                     category: "Coffee",
                     date: Date(),
                     type: .expense
                 ),
                 Transaction(
                     merchant: "Salary",
                     amount: 2500.0,
                     category: "Income",
                     date: Date().addingTimeInterval(-86400),
                     type: .income
                 ),
                 Transaction(
                     merchant: "Amazon",
                     amount: 120.0,
                     category: "Shopping",
                     date: Date().addingTimeInterval(-172800),
                     type: .expense
                 )
            ]
        case .lowBalance:
            self.budget = 1500.0
            self.spent = 1400.0
            self.transactions = [
                Transaction(merchant: "Uber", amount: 12.0, category: "Transport", date: Date(), type: .expense),
                Transaction(merchant: "Netflix", amount: 15.0, category: "Entertainment", date: Date().addingTimeInterval(-86400), type: .expense),
                Transaction(merchant: "McDonald's", amount: 8.5, category: "Food", date: Date().addingTimeInterval(-172800), type: .expense)
            ]
        case .highInCome:
            self.budget = 3000.0
            self.spent = 500.0
            self.transactions = [
                Transaction(merchant: "Salary", amount: 4000.0, category: "Income", date: Date(), type: .income),
                Transaction(merchant: "Freelance", amount: 1200.0, category: "Income", date: Date().addingTimeInterval(-86400), type: .income),
                Transaction(merchant: "Starbucks", amount: 6.0, category: "Coffee", date: Date().addingTimeInterval(-172800), type: .expense)
            ]
        }
       
    }
    var remaining: Double {
        return budget - spent
    }
    
}

extension HomeViewModel {
    
    enum Scenario {
        case defaultScenario
        case lowBalance
        case highInCome
    }
}
