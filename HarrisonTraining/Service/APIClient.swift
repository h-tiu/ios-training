//
//  APIClient.swift
//  HarrisonTraining
//
//  Created by H on 10/22/26.
//

import Foundation

nonisolated final class APIClient {
    private let baseURL = ServiceConstants.authBaseUrl
    
    func request<Body: Encodable, Response: Decodable>(
        endpoint: String,
        method: String,
        body: Body
    ) async throws -> Response {
        let url = URL(string: baseURL + endpoint)!
        var request = URLRequest(url: url)
        
        request.httpMethod = method
        request.setValue(
            "application/json",
            forHTTPHeaderField: "Content-Type"
        )
        
        request.httpBody = try JSONEncoder().encode(body)
        
        let (data, _) = try await URLSession.shared.data(for: request)
        
        return try JSONDecoder().decode(Response.self, from: data)
    }
}
