//
//  RecipeButton .swift
//  PancakeScreen
//
//  Created by Иван Колодин on 08.02.2023.
//

import SwiftUI

struct RecipeButton: View {
    var body: some View {
        HStack {
            cookingButton
            ingredients
        }
        .padding(.horizontal, Spacing.m)
    }
    
    var cookingButton: some View {
        HStack {
            Text(StringsApp.cooking)
                .lineLimit(1)
                .font(Fonts.sizeTwenty)
                .padding(.vertical, Spacing.eighteen)
                .padding(.horizontal, Spacing.twentySix)
                .background(Colors.ColorStatic.breakfastColor)
                .cornerRadius(Spacing.m)
        }
        .onTapGesture {
            print(StringsApp.cooking)
        }
    }
    
    var ingredients: some View {
        HStack {
            Text(StringsApp.ingredients)
                .lineLimit(1)
                .font(Fonts.sizeTwenty)
                .padding(.vertical, Spacing.eighteen)
                .padding(.horizontal, Spacing.twentyEight)
                .background(
                    CornerRadiusShape(
                        radius: Spacing.m,
                        corners: .allCorners,
                        isStroked: true
                    )
                    .stroke(
                        Colors.ColorStatic.breakfastColor,
                        lineWidth: 2
                    )
                )
        }
        .onTapGesture {
            print(StringsApp.ingredients)
        }
    }
}

