//
//  MenuCards.swift
//  MyRecipes.swift
//
//  Created by Иван Колодин on 23.01.2023.
//

import SwiftUI

struct Cards: View {
    var image: Image
    var text: String
    var color: String
    
    var body: some View {
        ///Кнопка, при нажатии на которую мы переходим на новый экран
        NavigationLink(
            destination: {
                ///Переход на новый экран с передачей названия картинки в NavBar нового экрана
                RecipeScreenView(title: text)
                    .toolbarBackground(
                        Colors.ColorStatic.mainBackgroundColor,
                        for: .navigationBar)
                    .toolbarBackground(.visible, for: .navigationBar)
            },
            label: {
                ///Юайка кнопки
                Rectangle ()
                    .frame(height: Spacing.menuCardHeight)
                    .frame(maxWidth: .infinity)
                    .foregroundColor(Color(hex: color))
                    .cornerRadius(Spacing.l)
                    .overlay(
                        VStack(spacing: 0) {
                            image
                                .resizable()
                            Text(text)
                                .font(Fonts.mediumSize)
                                .foregroundColor(.black)
                        }
                            .padding(.vertical, Spacing.m)
                    )
            }
        )
    }
}
