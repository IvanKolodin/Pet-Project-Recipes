//
//  Title.swift
//  PancakeScreen
//
//  Created by Иван Колодин on 03.02.2023.
//

import SwiftUI

struct Title: View {
    var body: some View {
        VStack {
            name
        }
    }
    var name: some View {
        HStack(spacing: 0) {
            Text(StringsApp.nameOfThePancakes)
                .font(Fonts.sizeThirty)
        }
        .padding(.horizontal, Spacing.twenty)
    }
}
