//
//  UserRepository.swift
//  HarrisonTraining
//
//  Created by H on 10/23/26.
//

import Foundation

nonisolated final class UserRepository {
    private let userKey = "loggedInUser"
    
    func saveUser(_ user: UserModel) throws {
        let data = try JSONEncoder().encode(user)
        UserDefaults.standard.set(data, forKey: userKey)
    }
    
    func getUser() throws -> UserModel? {
        guard let data = UserDefaults.standard.data(forKey: userKey) else {
            return nil
        }
        
        return try JSONDecoder().decode(UserModel.self, from: data)
    }
    
    func hasUser() throws -> Bool {
        return try getUser() != nil
    }
    
    func removeUser() {
        UserDefaults.standard.removeObject(forKey: userKey)
    }
}
