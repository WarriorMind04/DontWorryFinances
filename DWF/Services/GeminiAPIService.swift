//
//  GeminiAPIService.swift
//  DWF
//
//  Created by José Miguel Guerrero Jiménez on 06/04/26.
//

import Foundation


class APIService {
    
    static let shared = APIService()
    
    private let baseURL = "https://dwfbackend.onrender.com/api/ai/generate"
    
    func generate(prompt: String) async throws -> AIResponse {
        
        guard let url = URL(string: baseURL) else {
            throw URLError(.badURL)
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        let body = ["prompt": prompt]
        request.httpBody = try JSONSerialization.data(withJSONObject: body)
        
        let (data, response) = try await URLSession.shared.data(for: request)
        
        if let httpResponse = response as? HTTPURLResponse {
            print("Status code:", httpResponse.statusCode)
            print("Response body:", String(data: data, encoding: .utf8) ?? "")
            
            guard httpResponse.statusCode == 200 else {
                throw URLError(.badServerResponse)
            }
        }
        
        // Decodificar en wrapper
        let decoded = try JSONDecoder().decode(BackendResponse.self, from: data)
        
        // Manejo de error devuelto por backend
        if let error = decoded.error {
            throw APIServiceError.backendError(error)
        }
        
        // Verificar components
        if let components = decoded.components {
            return AIResponse(components: components)
        } else {
            throw APIServiceError.noComponents
        }
    }
}

// Error personalizado
enum APIServiceError: Error, LocalizedError {
    case backendError(String)
    case noComponents
    
    var errorDescription: String? {
        switch self {
        case .backendError(let msg): return msg
        case .noComponents: return "No components returned"
        }
    }
}
