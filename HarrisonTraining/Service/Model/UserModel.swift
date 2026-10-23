//
//  UserModel.swift
//  HarrisonTraining
//
//  Created by H on 10/23/26.
//

import Foundation

nonisolated struct UserModel: Codable, Identifiable {
    let id: Int
    let username: String
    let email: String
    let firstName: String
    let lastName: String
    let image: String
    let session: SessionModel
}
