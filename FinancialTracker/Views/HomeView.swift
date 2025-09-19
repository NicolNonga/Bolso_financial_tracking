//
//  HomeView.swift
//  FinancialTracker
//
//  Created by apple on 9/18/25.
//

import SwiftUI
import SwiftUI

struct HomeView: View {
    @State private var selectedPeriod: BudgetPeriod = .month
    // Exemplo de dados fictícios
    let transactions: [Transaction] = [
        Transaction(merchant: "Supermarket", amount: 45.90, category: "Groceries", date: Date(), type: .expense),
        Transaction(merchant: "Salary", amount: 1500.00, category: "Income", date: Date(), type: .income),
        Transaction(merchant: "Coffee Shop", amount: 3.50, category: "Food & Drink", date: Date(), type: .expense)
    ]

    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                // Seletor de período
                Picker("Period", selection: $selectedPeriod) {
                    ForEach(BudgetPeriod.allCases, id: \.self) { period in
                        Text(period.rawValue)
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding(.horizontal)

                // Card de orçamento
                BudgetCard(totalIncome: 3000, totalExpenses: 1500, period: selectedPeriod)
                    .padding(.horizontal)

                // Lista de transações
                List(transactions) { transaction in
                    TransactionRow(transaction: transaction)
                }
                .listStyle(PlainListStyle())
            }
            .navigationTitle("Home")
        }
    }
}

#Preview {
    HomeView()
}

