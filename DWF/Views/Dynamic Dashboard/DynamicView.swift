//
//  DynamicView.swift
//  DWF
//
//  Created by Jose Miguel Guerrero Jiménez on 31/03/26.
//

import SwiftUI


struct DynamicView: View {
    var response: AIResponse
    
    var body: some View {
        ScrollView {
            ForEach(response.components ?? []) { component in  // <-- aquí
                switch component.type {
                case "expenseSummary":
                    ExpenseSummaryView(data: component.data)
                    
                case "goal":
                    GoalCardView(data: component.data)
                    
                case "chart":
                    ChartView(data: component.data)
                    
                case "insight":
                    InsightView(text: component.data.text ?? "")
                    
                default:
                    Text("Unsupported")
                }
            }
        }
        .padding()
    }
}

