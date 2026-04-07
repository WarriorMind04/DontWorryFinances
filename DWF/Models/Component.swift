//
//  Component.swift
//  DWF
//
//  Created by Jose Miguel Guerrero Jiménez on 31/03/26.
//

import Foundation


struct Component: Codable, Identifiable {
    let id = UUID()
    let type: String
    let data: ComponentData
}

enum ComponentType: String, Codable {
    case expenseSummary
    case goal
    case chart
    case insight
}
