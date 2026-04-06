//
//  BackendResponse.swift
//  DWF
//
//  Created by José Miguel Guerrero Jiménez on 06/04/26.
//

import Foundation

struct BackendResponse: Codable {
    let components: [Component]?
    let error: String?
}
