//
//  IngredientPicture.swift
//  PancakeScreen
//
//  Created by Иван Колодин on 08.02.2023.
//

import SwiftUI

struct IngredientPicture: View {
    var body: some View {
        VStack {
            firstStep
                .padding(.bottom, Spacing.twenty)
            commentOnThePicture
                .padding(.bottom, Spacing.thirty)
            secondStep
        }
        .padding(.horizontal, Spacing.m)
    }
    
    var firstStep: some View {
        ImagesAsset.strawberriesInABlender
            .resizable()
            .frame(width: Spacing.firstStepImageWidth,
                   height: Spacing.firstStepImageHeight)
            .cornerRadius(Spacing.l)
    }
    
    var commentOnThePicture: some View {
        HStack {
            Text(StringsApp.stepOne)
                .font(.callout)
                .multilineTextAlignment(.leading)
        }
    }
    
    var secondStep: some View {
        ImagesAsset.addWater
            .resizable()
            .frame(width: Spacing.firstStepImageWidth,
                   height: Spacing.firstStepImageHeight)
    }
}
