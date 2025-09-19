//
//  HomeView.swift
//  FinancialTracker
//
//  Created by apple on 9/18/25.
//

import SwiftUI
import SwiftUI

struct HomeView: View {
    @State private var viewModel = HomeViewModel(scenario: .lowBalance)
    @State private var selectedPeriod: BudgetPeriod = .month

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
                BudgetCard(totalIncome:viewModel.budget, totalExpenses: viewModel.spent, period: selectedPeriod)
                    .padding(.horizontal)

                // Lista de transações
                List(viewModel.transactions) { transaction in
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

