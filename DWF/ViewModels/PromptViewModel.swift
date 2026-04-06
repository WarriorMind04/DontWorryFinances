//
//  PromptViewModel.swift
//  DWF
//
//  Created by Jose Miguel Guerrero Jiménez on 31/03/26.
//

/*import Foundation
import Combine

class PromptViewModel: ObservableObject {
    @Published var prompt: String = ""
    @Published var isLoading = false
    
    func generateResponse(completion: @escaping (AIResponse) -> Void) {
        isLoading = true
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            // 🔥 MOCK AI RESPONSE
            let response = AIResponse(components: [
                Component(
                    type: .expenseSummary,
                    data: ComponentData(
                        title: "Expenses",
                        items: [
                            ExpenseItem(category: "Food", amount: 120),
                            ExpenseItem(category: "Transport", amount: 50)
                        ]
                    )
                ),
                Component(
                    type: .goal,
                    data: ComponentData(
                        title: "Monthly Savings",
                        target: 300,
                        progress: 170
                    )
                ),
                Component(
                    type: .insight,
                    data: ComponentData(
                        text: "You could reduce spending on food to reach your goal."
                    )
                )
            ])
            
            self.isLoading = false
            completion(response)
        }
    }
}
*/
import Foundation
import Combine

@MainActor
class PromptViewModel: ObservableObject {
    
    @Published var prompt: String = ""
    @Published var isLoading = false
    
    /*func generateResponse(completion: @escaping (AIResponse) -> Void) {
        
        isLoading = true
        
        Task {
            do {
                let response = try await APIService.shared.generate(prompt: prompt)
                
                completion(response)
                isLoading = false
                
            } catch {
                print("❌ Error:", error)
                isLoading = false
            }
        }
    }*/
    func generateResponse(completion: @escaping (AIResponse) -> Void) {
        isLoading = true
        
        Task {
            do {
                let response = try await APIService.shared.generate(prompt: prompt)
                isLoading = false
                completion(response)
            } catch {
                isLoading = false
                print("❌ Error:", error.localizedDescription)
            }
        }
    }
}
