//
//  LoginResponse.swift
//  HarrisonTraining
//
//  Created by H on 10/22/26.
//

import Foundation

struct LoginResponse: Codable, Identifiable {
    let id: Int
    let username: String
    let email: String
    let firstName: String
    let lastName: String
    let image: String
    let accessToken: String
    let refreshToken: String
}

extension LoginResponse {
    func toUserModel() -> UserModel {
        UserModel(
            id: id,
            username: username,
            email: email,
            firstName: firstName,
            lastName: lastName,
            image: image,
            session: SessionModel(accessToken: accessToken, refreshToken: refreshToken)
        )
    }
}
