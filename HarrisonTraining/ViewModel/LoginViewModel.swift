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
    @Injected(\.userRepository) private var userRepository: UserRepository
    
    @Published private(set) var isLoading: Bool
    @Published private(set) var isLoggedIn: Bool
    @Published private(set) var isError: ErrorModel
    
    init() {
        isLoading = false
        isLoggedIn = false
        isError = ErrorModel()
    }
    
    func login(username: String, password: String) async {
        isLoading = true
        
        do {
            let loginResponse: LoginResponse = try await authRepository.login(username: username, password: password)
            
            try await userRepository.saveUser(loginResponse.toUserModel())
            
            if(try userRepository.hasUser()) { isLoggedIn = true }
        } catch {
            isError = ErrorModel(message: error.localizedDescription)
            print("Error: \(error)")
        }
        
        isLoading = false
    }
}
