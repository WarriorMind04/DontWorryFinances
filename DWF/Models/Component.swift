//
//  Component.swift
//  DWF
//
//  Created by Jose Miguel Guerrero Jiménez on 31/03/26.
//

import Foundation

struct Component: Codable, Identifiable {
    var id: UUID = UUID()
    var type: ComponentType
    var data: ComponentData
}

enum ComponentType: String, Codable {
    case expenseSummary
    case expenseList
    case goal
    case chart
    case insight
    case actionButton
}
