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
            
            TextEditor(text: $vm.prompt)
                .frame(height: 150)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(12)
            
            if vm.isLoading {
                ProgressView()
            }
            
            Button("Generate") {
                vm.generateResponse { response in
                    appVM.addDocument(prompt: vm.prompt, response: response)
                    dismiss()
                }
            }
            .buttonStyle(.borderedProminent)
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    PromptView()
}
