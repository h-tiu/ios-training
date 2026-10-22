//
//  Button+Ext.swift
//  HarrisonTraining
//
//  Created by H on 10/22/26.
//

import SwiftUI

extension Button {
    func hStyle() -> some View {
        self
            .frame(maxWidth: .infinity, maxHeight: AppConstants.globalButtonHeight)
            .background(.blue)
            .foregroundStyle(.white)
            .clipShape(RoundedRectangle(cornerRadius: AppConstants.globalCornerRadius))
            .padding(.top)
            .padding(.leading)
            .padding(.trailing)
    }
}
