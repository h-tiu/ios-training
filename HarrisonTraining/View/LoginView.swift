//
//  LoginView.swift
//  HarrisonTraining
//
//  Created by H on 10/22/26.
//

import SwiftUI

struct LoginView: View {
    @State private var userName: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack {
            TextField("Username", text: $userName).hStyle()
            SecureField("Password", text: $password).hStyle()
            Button("Login") {
                // Handle login
            }.hStyle()
            Spacer().frame(height: 10).padding(.top, 2)
            Button("Register") {
                // Handle registration
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding()
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
