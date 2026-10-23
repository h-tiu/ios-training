//
//  LoginView.swift
//  HarrisonTraining
//
//  Created by H on 10/22/26.
//

import SwiftUI
import FactoryKit

struct LoginView: View {
    @Injected(\.loginViewModel) private var viewModel: LoginViewModel
    @State private var userName: String = ""
    @State private var password: String = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                TextField("Username", text: $userName).hStyle()
                SecureField("Password", text: $password).hStyle()
                Button("Login") {
                    Task {
                        await viewModel.login()
                    }
                }.hStyle()
                Spacer().frame(height: 10).padding(.top, 2)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .padding()
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
