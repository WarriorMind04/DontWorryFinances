//
//  InsightView.swift
//  DWF
//
//  Created by Jose Miguel Guerrero Jiménez on 31/03/26.
//

import SwiftUI

struct InsightView: View {
    var text: String
    
    var body: some View {
        Text(text)
            .padding()
            .background(Color.orange.opacity(0.2))
            .cornerRadius(12)
    }
}
