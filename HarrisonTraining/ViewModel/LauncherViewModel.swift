//
//  LauncherViewModel.swift
//  HarrisonTraining
//
//  Created by H on 10/23/26.
//

import Foundation
import Combine
import FactoryKit

nonisolated final class LauncherViewModel: ObservableObject {
    @Injected(\.userRepository) private var userRepository: UserRepository
    
    @Published private(set) var hasUserLoggedIn: Bool
    @Published private(set) var isLoading: Bool
   
    init() {
        hasUserLoggedIn = false
        isLoading = true
    }
    
    func checkUser() async {
        do {
            hasUserLoggedIn = try userRepository.hasUser()
        } catch {
            print("Error: \(error)")
        }
        
        isLoading = false
    }
}
