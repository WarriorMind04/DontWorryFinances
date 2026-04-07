//
//  HomeView.swift
//  DWF
//
//  Created by José Miguel Guerrero Jiménez on 30/03/26.
//


import SwiftUI

struct HomeView: View {
    @StateObject private var vm = AppViewModel()
    @State private var showPrompt = false
    
    var body: some View {
        NavigationStack {
            
            Group {
                if vm.documents.isEmpty {
                    emptyState
                } else {
                    documentList
                }
            }
            .navigationTitle("DWFinances!")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        showPrompt = true
                    } label: {
                        Image(systemName: "plus")
                    }
                }
            }
            .sheet(isPresented: $showPrompt) {
                PromptView(appVM: vm)
            }
        }
    }
}

extension HomeView {
    
    var documentList: some View {
        List {
            ForEach(vm.documents, id: \.id) { doc in
                NavigationLink {
                    DashboardView(document: doc)
                } label: {
                    DocumentRow(doc: doc)
                }
            }
            .onDelete(perform: deleteDocument)
        }
    }
    
    func deleteDocument(at offsets: IndexSet) {
        vm.documents.remove(atOffsets: offsets)
    }
}

extension HomeView {
    
    var emptyState: some View {
        VStack(spacing: 16) {
            
            Image(systemName: "chart.bar.doc.horizontal")
                .font(.system(size: 50))
                .foregroundColor(.gray)
            
            Text("No documents yet")
                .font(.headline)
            
            Text("Start by describing your finances")
                .font(.subheadline)
                .foregroundColor(.gray)
            
            Button {
                showPrompt = true
            } label: {
                Text("Create your first document")
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.borderedProminent)
            .padding(.top, 10)
        }
        .padding()
    }
}

#Preview {
    HomeView()
}
