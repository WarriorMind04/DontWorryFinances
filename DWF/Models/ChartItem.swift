//
//  ChartItem.swift
//  DWF
//
//  Created by Jose Miguel Guerrero Jiménez on 31/03/26.
//

import Foundation

struct ChartItem: Codable, Identifiable {
    var id: UUID = UUID()
    var label: String
    var value: Double
}
