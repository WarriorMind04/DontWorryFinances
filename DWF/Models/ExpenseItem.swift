//
//  ExpenseItem.swift
//  DWF
//
//  Created by Jose Miguel Guerrero Jiménez on 31/03/26.
//

import Foundation

struct ExpenseItem: Codable, Identifiable {
    var id: UUID = UUID()
    var category: String
    var amount: Double
    var userEdited: Bool? = false
}
