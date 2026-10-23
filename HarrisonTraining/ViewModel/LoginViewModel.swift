//
//  LoginViewModel.swift
//  HarrisonTraining
//
//  Created by H on 10/23/26.
//

import Foundation
import Combine
import FactoryKit

nonisolated final class LoginViewModel: ObservableObject {
    @Injected(\.authRepository) private var authRepository: AuthRepository
    
    @Published private(set) var isLoading: Bool
    @Published private(set) var isError: Bool
    
    init() {
        isLoading = false
        isError = false
    }
    
    func login(username: String, password: String) async {
        isLoading = true
        
        do {
            let loginResponse: LoginResponse = try await authRepository
                .login(username: username, password: password)
            
        } catch {
            print("Failed to fetch cards: \(error)")
        }
        
        isLoading = false
    }
}
