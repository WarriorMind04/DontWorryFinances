//
//  GoalCardView.swift
//  DWF
//
//  Created by Jose Miguel Guerrero Jiménez on 31/03/26.
//

import SwiftUI

struct GoalCardView: View {
    var data: ComponentData
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(data.title ?? "Goal")
                .font(.headline)
            
            ProgressView(value: (data.progress ?? 0) / (data.target ?? 1))
            
            Text("€\(data.progress ?? 0) / €\(data.target ?? 0)")
                .font(.caption)
        }
        .padding()
        .background(Color.green.opacity(0.1))
        .cornerRadius(12)
    }
}
