//
//  HomeView.swift
//  DWF
//
//  Created by José Miguel Guerrero Jiménez on 30/03/26.
//

import SwiftUI

struct HomeView: View {
    @State private var text: String = ""
    var body: some View {
        /*TextField("Insert your budget, expenses,etc...", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
            .padding()*/
        Spacer()
        TextEditor(text: $text)
                    //.frame(height: 150) // ajusta el tamaño
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color.gray.opacity(0.3))
                    )
                    .overlay(
                        Group {
                            if text.isEmpty {
                                Text("Insert your budget, expenses, etc… whatever related with your finances…")
                                    .foregroundColor(.gray)
                        
                                    .padding()
                            }
                        },
                        alignment: .topLeading
                    )
    }
    
}

#Preview {
    HomeView()
}
