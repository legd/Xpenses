//
//  Expense.swift
//  Xpenses
//
//  Created by Luis Guzman on 2/12/25.
//

import Foundation
import SwiftData

enum TransactionType: String, Codable, CaseIterable {
    case income
    case expense
    case transfer
}

@Model
final class Transaction {
    var id: UUID
    var account: Account
    var category: Category
    var amount: Float
    var date: Date
    var notes: String
    var currency: Currency
//    var image: Image!
    var type: TransactionType
    
    init(id: UUID, account: Account, category: Category, amount: Float, date: Date, notes: String, currency: Currency, type: TransactionType) {
        self.id = id
        self.account = account
        self.category = category
        self.amount = amount
        self.date = date
        self.notes = notes
        self.currency = currency
        self.type = type
    }
}
