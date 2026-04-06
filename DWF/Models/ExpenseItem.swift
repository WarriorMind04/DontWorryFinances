//
//  ExpenseItem.swift
//  DWF
//
//  Created by Jose Miguel Guerrero Jiménez on 31/03/26.
//

import Foundation

struct ExpenseItem: Codable, Identifiable {
    let id = UUID()
    let category: String?
    let amount: Double?
}
