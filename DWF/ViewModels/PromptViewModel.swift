//
//  PromptViewModel.swift
//  DWF
//
//  Created by Jose Miguel Guerrero Jiménez on 31/03/26.
//


import Foundation
import Combine

@MainActor
class PromptViewModel: ObservableObject {
    
    @Published var prompt: String = ""
    @Published var isLoading = false
    
    
    func generateResponse(completion: @escaping (AIResponse) -> Void) {
        isLoading = true
        
        Task {
            do {
                let response = try await APIService.shared.generate(prompt: prompt)
                print("🚀 Components count:", response.components?.count ?? 0)
                isLoading = false
                completion(response)
            } catch {
                isLoading = false
                print("❌ Error:", error.localizedDescription)
            }
        }
    }
}
