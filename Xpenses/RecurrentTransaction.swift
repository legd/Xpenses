//
//  RecurrentTransaction.swift
//  Xpenses
//
//  Created by Luis Guzman on 14/12/25.
//

import Foundation
import SwiftData

enum Frecuency: String, Codable, CaseIterable {
    case daily
    case weekly
    case biweekly
    case monthly
    case bimontly
    case quarterly
    case semester
    case annually
}

@Model
final class RecurrentTransaction {
    var id: UUID
    var account: Account
    var category: Category
    var amount: Float
    var frecuency: Frecuency
    var lastOcurrence: Date
    var notes: String
    var currency: Currency
//    var image: Image!
    var type: TransactionType
    
    init(id: UUID, account: Account, category: Category, amount: Float, frecuency: Frecuency, lastOcurrence: Date, notes: String, currency: Currency, type: TransactionType) {
        self.id = id
        self.account = account
        self.category = category
        self.amount = amount
        self.frecuency = frecuency
        self.lastOcurrence = lastOcurrence
        self.notes = notes
        self.currency = currency
        self.type = type
    }
}
