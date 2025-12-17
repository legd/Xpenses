//
//  Account.swift
//  Xpenses
//
//  Created by Luis Guzman on 14/12/25.
//

import Foundation
import SwiftData

enum AccountType: String, Codable, CaseIterable {
    case debit
    case credit
    case saving
    case checking
}

@Model
final class Account {
    @Attribute(.unique) var id: UUID
    var name: String
    var type: AccountType
    
    init(id: UUID, name: String, type: AccountType) {
        self.id = id
        self.name = name
        self.type = type
    }
}
