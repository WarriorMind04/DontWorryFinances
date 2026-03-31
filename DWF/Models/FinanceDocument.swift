//
//  FinanceDocument.swift
//  DWF
//
//  Created by Jose Miguel Guerrero Jiménez on 31/03/26.
//


import Foundation
import SwiftData

@Model
class FinanceDocument {
    var id: UUID
    var originalPrompt: String
    var currentState: Data // JSON encoded
    var createdAt: Date
    var updatedAt: Date
    
    init(prompt: String, state: AIResponse) {
        self.id = UUID()
        self.originalPrompt = prompt
        self.currentState = try! JSONEncoder().encode(state)
        self.createdAt = Date()
        self.updatedAt = Date()
    }
}
