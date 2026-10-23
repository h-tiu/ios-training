//
//  LauncherView.swift
//  HarrisonTraining
//
//  Created by H on 10/23/26.
//

import SwiftUI
import FactoryKit

struct LauncherView: View {
    @Injected(\.launcherViewModel) private var viewModel: LauncherViewModel
    
    var body: some View {
        Group {
            if viewModel.isLoading {
                ProgressView()
                    .controlSize(.large)
            } else if viewModel.hasUserLoggedIn {
                MainView()
            } else {
                LoginView()
            }
        }
        .task {
            await viewModel.checkUser()
        }
    }
}

struct LauncherView_Previews: PreviewProvider {
    static var  previews: some View {
        LauncherView()
    }
}
