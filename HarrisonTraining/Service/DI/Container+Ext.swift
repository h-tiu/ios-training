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
    
    var authService: Factory<AuthService> {
        self {
            AuthService()
        }
    }
}
