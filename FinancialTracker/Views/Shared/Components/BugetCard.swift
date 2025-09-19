import SwiftUI


import SwiftUI

struct BudgetCard: View {
    var totalIncome: Double
    var totalExpenses: Double
    
    var period: BudgetPeriod
    
    private var adjustedTotal: Double {
        switch period {
        case .month: return totalIncome
        case .sixMonths : return totalIncome * 6
        case .year : return totalIncome * 12
        }
    }
    
    private var adjustedExpenses: Double {
        switch period {
        case .month: return totalExpenses
        case .sixMonths : return totalExpenses * 6
        case .year : return totalExpenses * 12
        }
    }
    
    private var  adjustedRemaining: Double {
        adjustedTotal - adjustedExpenses
    }
    
    private var remaining: Double {
        totalIncome - totalExpenses
    }
    
    private var progress: Double {
        guard adjustedTotal > 0 else { return 0 }
        return min(adjustedExpenses / adjustedTotal, 1.0)
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            
            // Title
            Text(period.rawValue)
                .font(.headline)
                .foregroundColor(.white)
            
            // Amounts in columns
            HStack(spacing: 24) {
                
                // Income
                VStack(alignment: .leading, spacing: 4) {
                    Text("Renda")
                        .font(.caption)
                        .foregroundColor(.white)
                    Text(adjustedTotal, format: .currency(code: "USD"))
                        .font(.headline)
                        .foregroundColor(.green)
                }
                Spacer()
                
                // Expenses
                VStack(alignment: .leading) {
                    Text("Gastos")
                        .font(.caption)
                        .foregroundColor(.white)
                    Text(adjustedExpenses, format: .currency(code: "USD"))
                        .font(.headline)
                        .foregroundColor(.red)
                }
        
           
            }
            
            // Progress bar
            ProgressView(value: progress)
                .progressViewStyle(LinearProgressViewStyle(tint: .blue))
                .padding(.top, 4)
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color(.black))
        .cornerRadius(20)
        .shadow(color: Color.black.opacity(0.05), radius: 8, x: 0, y: 4)
    }
}

#Preview {
    BudgetCard(totalIncome: 5000, totalExpenses: 3200, period: .month)
        .padding()
}
