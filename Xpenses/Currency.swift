//
//  Currency.swift
//  Xpenses
//
//  Created by Luis Guzman on 14/12/25.
//

import Foundation
import SwiftData

@Model
final class Currency {
    @Attribute(.unique) var id: UUID
    var name: String
    var code: String
    
    init(id: UUID, name: String, code: String) {
        self.id = id
        self.name = name
        self.code = code
    }
}
