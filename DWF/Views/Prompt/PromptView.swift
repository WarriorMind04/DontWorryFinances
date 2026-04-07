//
//  PromptView.swift
//  DWF
//
//  Created by Jose Miguel Guerrero Jiménez on 31/03/26.
//

import SwiftUI

struct PromptView: View {
    @ObservedObject var appVM: AppViewModel
    @StateObject private var vm = PromptViewModel()
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack(spacing: 20) {
            
            Text("Describe your finances")
                .font(.title2)
                .fontWeight(.semibold)
            
            ZStack(alignment: .topLeading) {
                
                // Placeholder
                if vm.prompt.isEmpty {
                    Text("e.g. I spent €120 on food and want to save €300 this month...")
                        .foregroundColor(.gray)
                        .padding(.horizontal, 16)
                        .padding(.vertical, 12)
                }
                
                TextEditor(text: $vm.prompt)
                    .frame(height: 150)
                    .padding(8)
                    .background(Color(.systemGray6))
                    .cornerRadius(12)
            }
            
            if vm.isLoading {
                ProgressView("Generating...")
            }
            
            Button {
                generate()
            } label: {
                Text("Generate")
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.borderedProminent)
            .disabled(vm.prompt.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty || vm.isLoading)
            
            Spacer()
        }
        .padding()
    }
    
    // MARK: - Actions
    
    func generate() {
        vm.generateResponse { response in
            appVM.addDocument(prompt: vm.prompt, response: response)
            dismiss()
        }
    }
}
