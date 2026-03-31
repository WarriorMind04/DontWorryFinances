//
//  helperFinanceDoc.swift
//  DWF
//
//  Created by Jose Miguel Guerrero Jiménez on 31/03/26.
//

import Foundation

extension FinanceDocument {
    func getState() -> AIResponse {
        return try! JSONDecoder().decode(AIResponse.self, from: currentState)
    }
    
    func updateState(_ newState: AIResponse) {
        self.currentState = try! JSONEncoder().encode(newState)
        self.updatedAt = Date()
    }
}
