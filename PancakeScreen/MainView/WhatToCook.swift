//
//  WhatToCook.swift
//  MyRecipes.swift
//
//  Created by Иван Колодин on 23.01.2023.
//

import SwiftUI

enum CardScreen {
    case breakfast
    case lunch
    case dinner
    case snack
    
    var imageCard: Image {
        switch self {
        case .breakfast:
            return ImagesAsset.breakfastPicture
        case .lunch:
            return ImagesAsset.lunchPicture
        case .dinner:
            return ImagesAsset.dinnerPicture
        case .snack:
            return ImagesAsset.snackPicture
        }
    }
    
    var nameCard: String {
        switch self {
        case .breakfast:
            return StringsApp.breakfast
        case .lunch:
            return StringsApp.lunch
        case .dinner:
            return StringsApp.dinner
        case .snack:
            return StringsApp.snack
        }
    }
    
    var colorCard: String {
        switch self {
        case .breakfast:
            return Colors.ColorString.breakfastColor
        case .lunch:
            return Colors.ColorString.lunchColor
        case .dinner:
            return Colors.ColorString.dinnerColor
        case .snack:
            return Colors.ColorString.snackColor
        }
    }
}

struct WhatToCook: View {
    @State var searchText = ""
    
    private var columns: [GridItem] = [
        GridItem(.flexible(), spacing: Spacing.l),
        GridItem(.flexible(), spacing: Spacing.l),
    ]
    private let cardsArray: [CardScreen] = [.breakfast, .lunch, .dinner, .snack]
    
    var body: some View {
        NavigationStack {
            ZStack {
                Colors.ColorStatic.mainBackgroundColor
                    .ignoresSafeArea()
                content
            }
            .toolbarBackground(
                Colors.ColorStatic.mainBackgroundColor,
                for: .navigationBar
            )
            .toolbarBackground(.visible, for: .navigationBar)
        }
        .onAppear {
            for family in UIFont.familyNames.sorted() {
                let names = UIFont.fontNames(forFamilyName: family)
                print("Family: \(family) Font names: \(names)")
            }
        }
    }
    
    var content: some View {
        VStack {
            NavBarView()
            SearchTextField(searchText: $searchText)
                .padding(.horizontal, Spacing.l)
            Spacer()
            cart
                .padding(.horizontal, Spacing.l)
            Spacer()
            Spacer()
            TabBar()
        }
    }
    
    var cart: some View {
        LazyVGrid(columns: columns, spacing: Spacing.twenty) {
            ForEach(cardsArray, id: \.nameCard) { card in
                Cards(
                    image: card.imageCard,
                    text: card.nameCard,
                    color: card.colorCard
                )
            }
        }
        .padding(.horizontal, Spacing.twenty)
    }
}
