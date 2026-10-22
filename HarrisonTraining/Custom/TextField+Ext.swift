//
//  File.swift
//  HarrisonTraining
//
//  Created by H on 10/22/26.
//

import SwiftUI

extension TextField {
    func hStyle() -> some View {
        self
            .padding(.horizontal, AppConstants.globalHorizontalFieldPadding)
            .frame(height: AppConstants.globalFieldHeight)
            .background(Color.gray.opacity(AppConstants.globalOpacity))
            .clipShape(RoundedRectangle(cornerRadius: AppConstants.globalCornerRadius))
            .padding(.top)
            .padding(.leading)
            .padding(.trailing)
    }
}
