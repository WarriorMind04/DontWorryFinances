//
//  DashboardView.swift
//  DWF
//
//  Created by José Miguel Guerrero Jiménez on 06/04/26.
//

import SwiftUI

struct DashboardView: View {
    var document: FinanceDocument
    
    var body: some View {
        let state = document.getState()
        
        DynamicView(response: state)
            .navigationTitle("Dashboard")
            .navigationBarTitleDisplayMode(.inline)
    }
}


