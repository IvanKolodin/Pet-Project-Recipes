//
//  RecipeTextView.swift
//  PancakeScreen
//
//  Created by Иван Колодин on 07.03.2023.
//

import SwiftUI

struct RecipeTextView: View {
    var body: some View {
        ZStack {
            content
                .ignoresSafeArea()
        }
    }
    
    var content: some View {
        ZStack(alignment: .bottom) {
            ScrollView {
                VStack(spacing: 0) {
                    PancakeReview()
                    Title()
                        .padding(.top, Spacing.m)
                    PancakeText()
                        .padding(.top, Spacing.m)
                        .padding(.bottom, Spacing.twenty)
                    IngredientPicture()
                }
            }
            VStack {
                Spacer()
                RecipeButton()
                    .padding(.bottom, Spacing.fourty)
            }
            .frame(maxWidth: .infinity)
            .frame(height: 112)
            .background(Color.white.opacity(0.9))
        }
    }
}
