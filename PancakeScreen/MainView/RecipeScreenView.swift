//
//  RecipeScreenView.swift
//  MyRecipes.swift
//
//  Created by Иван Колодин on 2023-01-28.
//

import SwiftUI

struct RecipeScreenView: View {
    @Environment(\.presentationMode) var presentationMode
    
    let title: String
    
    var body: some View {
        ZStack {
            Colors.ColorStatic.mainBackgroundColor
                .ignoresSafeArea()
            content
        }
        .navigationBarBackButtonHidden(true)
    }
    
    var content: some View {
        VStack {
            navBar
            TinderStyleCard()
//            LikeAndDislike()
            Spacer()
        }
    }
    
    var navBar: some View {
        HStack(spacing: 0) {
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }) {
                ImagesAsset.theIconBack
                    .resizable()
                    .scaledToFit()
                    .frame(width: Spacing.l,
                           height: Spacing.l)
                    .foregroundColor(.black)
                
            }
            Spacer()
            Text(title)
                .font(Fonts.thirtySixSize)
            Spacer()
            ImagesAsset.theIconBack
                .resizable()
                .scaledToFit()
                .frame(width: Spacing.l,
                       height: Spacing.l)
                .opacity(0.01)
        }
        .padding(.leading, Spacing.m)
    }
}
