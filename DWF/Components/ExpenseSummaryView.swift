//
//  ExpenseSummaryView.swift
//  DWF
//
//  Created by Jose Miguel Guerrero Jiménez on 31/03/26.
//

/*import SwiftUI

struct ExpenseSummaryView: View {
    var data: ComponentData
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(data.title ?? "Expenses")
                .font(.headline)
            
            ForEach(data.items ?? []) { item in
                HStack {
                    Text(item.category)
                    Spacer()
                    Text("€\(item.amount, specifier: "%.2f")")
                }
            }
        }
        .padding()
        .background(Color.blue.opacity(0.1))
        .cornerRadius(12)
    }
}
*/
import SwiftUI

struct ExpenseSummaryView: View {
    var data: ComponentData
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(data.title ?? "Expenses")
                .font(.headline)
            
            ForEach(data.items ?? []) { item in
                HStack {
                    Text(item.category ?? "Unknown")           // ✅ unwrap
                    Spacer()
                    Text("€\(item.amount ?? 0, specifier: "%.2f")")
                }
            }
        }
        .padding()
        .background(Color.blue.opacity(0.1))
        .cornerRadius(12)
    }
}


