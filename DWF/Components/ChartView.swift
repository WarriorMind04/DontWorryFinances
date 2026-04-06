//
//  ChartView.swift
//  DWF
//
//  Created by José Miguel Guerrero Jiménez on 06/04/26.
//

import SwiftUI
import Charts

/*struct ChartView: View {
    var data: ComponentData
        
        var body: some View {
            VStack(alignment: .leading) {
                
                Text(data.title ?? "Chart")
                    .font(.headline)
                
                if let chartData = data.chartData {
                    
                    Chart(chartData) { item in
                        BarMark(
                            x: .value("Category", item.label),
                            y: .value("Amount", item.value)
                        )
                    }
                    .frame(height: 200)
                    
                } else {
                    Text("No data available")
                        .foregroundColor(.gray)
                }
            }
            .padding()
            .background(Color.purple.opacity(0.1))
            .cornerRadius(12)
        }
}


*/
struct ChartView: View {
    var data: ComponentData
        
    var body: some View {
        VStack(alignment: .leading) {
            
            Text(data.title ?? "Chart")
                .font(.headline)
            
            if let chartData = data.chartData, !chartData.isEmpty {
                
                Chart(chartData) { item in
                    BarMark(
                        x: .value("Category", item.label),
                        y: .value("Amount", item.value)
                    )
                    .foregroundStyle(Color.purple.gradient)
                }
                .frame(height: 200)
                
            } else {
                Text("No data available")
                    .foregroundColor(.gray)
            }
        }
        .padding()
        .background(Color.purple.opacity(0.1))
        .cornerRadius(12)
    }
}
