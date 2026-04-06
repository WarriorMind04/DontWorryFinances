//
//  DocumentRow.swift
//  DWF
//
//  Created by José Miguel Guerrero Jiménez on 06/04/26.
//

import SwiftUI

struct DocumentRow: View {
    var doc: FinanceDocument
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            
            Text(doc.originalPrompt)
                .font(.headline)
                .lineLimit(2)
            
            Text(doc.createdAt, style: .date)
                .font(.caption)
                .foregroundColor(.gray)
        }
        .padding(.vertical, 4)
    }
}


