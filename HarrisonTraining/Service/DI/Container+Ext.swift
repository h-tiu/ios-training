//
//  Container+Ext.swift
//  HarrisonTraining
//
//  Created by H on 10/22/26.
//

import FactoryKit

extension Container {
    var apiClient: Factory<APIClient> {
        self {
            APIClient()
        }
        .singleton
    }
    
    var userRepository: Factory<UserRepository> {
        self {
            UserRepository()
        }
    }
    
    var authRepository: Factory<AuthRepository> {
        self {
            AuthRepository()
        }
    }
    
    var loginViewModel: Factory<LoginViewModel> {
        self {
            LoginViewModel()
        }
    }
}
