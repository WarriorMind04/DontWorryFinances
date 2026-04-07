//
//  GoalCardView.swift
//  DWF
//
//  Created by Jose Miguel Guerrero Jiménez on 31/03/26.
//

/*import SwiftUI

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
*/
import SwiftUI

struct GoalCardView: View {
    var data: ComponentData
    
    var body: some View {
        VStack(alignment: .leading) {
            
            Text(data.title ?? "Goal")
                .font(.headline)
            
            ProgressView(
                value: Float(data.progress ?? 0),
                total: Float(data.target ?? 100)
            )
            .progressViewStyle(.linear)
            .tint(.blue)
            .padding(.vertical, 8)
            .animation(.easeInOut(duration: 0.6), value: data.progress)
            
            HStack {
                Text("Progress: $\(data.progress ?? 0)")
                Spacer()
                Text("Target: $\(data.target ?? 0)")
            }
            .font(.subheadline)
            .foregroundColor(.secondary)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(16)
        .shadow(radius: 6)
    }
}
