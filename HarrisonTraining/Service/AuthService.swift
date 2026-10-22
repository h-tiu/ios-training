//
//  AuthService.swift
//  HarrisonTraining
//
//  Created by H on 10/22/26.
//


import Foundation
import FactoryKit

nonisolated final class AuthService {
    @Injected(\.apiClient) private var apiClient: APIClient
    
    func login(username: String, password: String) async throws -> LoginResponse {
        let body = LoginRequestBody(
               username: username,
               password: password
           )

           return try await apiClient.request(
               endpoint: ServiceConstants.Endpoint.login,
               method: "POST",
               body: body
           )
    }
}

