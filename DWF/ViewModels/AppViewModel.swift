//
//  AppViewModel.swift
//  DWF
//
//  Created by Jose Miguel Guerrero Jiménez on 31/03/26.
//


import Foundation
import SwiftUI
import Combine

class AppViewModel: ObservableObject {
    @Published var documents: [FinanceDocument] = []
    
    func addDocument(prompt: String, response: AIResponse) {
        let doc = FinanceDocument(prompt: prompt, state: response)
        documents.insert(doc, at: 0)
    }
}
