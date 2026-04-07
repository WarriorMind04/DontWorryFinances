//
//  MockData.swift
//  DWF
//
//  Created by José Miguel Guerrero Jiménez on 07/04/26.
//

import Foundation

let mockResponse = AIResponse(components: [
    Component(
        type: "expenseSummary", // ✅ string
        data: ComponentData(
            title: "Expenses",
            items: [
                ExpenseItem(category: "Food", amount: 120),
                ExpenseItem(category: "Gym", amount: 50)
            ],
            target: nil,
            progress: nil,
            text: nil,          // ✅ antes de chartData
            chartData: nil
        )
    ),
    Component(
        type: "goal", // ✅ string
        data: ComponentData(
            title: "Savings Goal",
            items: nil,
            target: 300,
            progress: 150,
            text: nil,          // ✅ antes de chartData
            chartData: nil
        )
    )
])

