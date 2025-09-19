//
//  TransactionRow.swift
//  FinancialTracker
//
//  Created by apple on 9/18/25.
//
import SwiftUI

struct TransactionRow: View {
    var transaction:Transaction
    
    var body: some View {
        HStack(spacing: 12) {
            ZStack {
                Circle()
                    .fill(transaction.type ==  .expense ? Color.red.opacity(0.1) : Color.green.opacity(0.1))
                    .frame(width: 40, height: 40)
                Image(systemName: iconName(for: transaction.category))
                    .foregroundColor(transaction.type == .expense ? .red : .green)
            }
            
            VStack(alignment: .leading, spacing: 4) {
                Text(transaction.merchant)
                    .font(.subheadline)
                    .bold()
                Text("\(transaction.category) - \(transaction.date.formatted())")
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
            
            Spacer()
            
            Text(transaction.amount, format: .currency(code: "USD"))
                .font(.subheadline).bold()
                .foregroundColor(transaction.type == .expense ? .red : .green)
        }
        .padding(.vertical, 8)
    }
    
    private func iconName(for category: String) -> String {
        switch category.lowercased() {
        case "groceries": return "cart.fill"
        case "salary": return "dollarsign.circle.fill"
        case "coffee": return "cup.and.saucer.fill"
        default: return "creditcard.fill"
        }
    }
}

#Preview {
    VStack(spacing: 10) {
        ForEach(sampleTransactionsFinal) { tx in
            TransactionRow(transaction: tx)
        }
    }
    .padding()
}
