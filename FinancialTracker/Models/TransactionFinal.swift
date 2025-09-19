//
//  Transaction.swift
//  FinancialTracker
//
//  Created by apple on 9/18/25.
//

import Foundation

enum TransactionType {
    
    case income, expense
    
}



struct Transaction: Identifiable {
    let id = UUID()
    let merchant: String      // comerciante
    let amount: Double
    let category: String
    let date: Date
    let type: TransactionType
}

// Exemplo de dados mock
let sampleTransactionsFinal: [Transaction] = [
    Transaction(merchant: "Supermarket", amount: -45.90, category: "Groceries", date: Date(), type: .expense),
    Transaction(merchant: "Company XYZ", amount: 1200.00, category: "Salary", date: Date(), type: .income),
    Transaction(merchant: "Coffee Shop", amount: -5.50, category: "Coffee", date: Date(), type: .expense)
]
