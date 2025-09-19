//
//  TransactionviewModel.swift
//  FinancialTracker
//
//  Created by apple on 9/18/25.
//

import Foundation

class TransactionviewModel: ObservableObject {
    @Published var transactions: [Transaction] = []
}
