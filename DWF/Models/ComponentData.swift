//
//  ComponentData.swift
//  DWF
//
//  Created by Jose Miguel Guerrero Jiménez on 31/03/26.
//

import Foundation

/*struct ComponentData: Codable {
    var title: String?
    
    // gastos
    var items: [ExpenseItem]?
    
    // goals
    var target: Double?
    var progress: Double?
    
    // chart
    var chartData: [ChartItem]?
    
    // insight
    var text: String?
    
    // acciones
    var action: String?
}
*/

struct ComponentData: Codable {
    let title: String?
    let items: [ExpenseItem]?
    let target: Double?
    let progress: Double?
    let text: String?
    let chartData: [ChartItem]?
}
