//
//  Category.swift
//  Xpenses
//
//  Created by Luis Guzman on 14/12/25.
//

import Foundation
import SwiftData

@Model
final class Category {
    @Attribute(.unique) var id: UUID
    var name: String
    var upperCategory: Category!
    
    init(id: UUID, name: String) {
        self.id = id
        self.name = name
    }
}
