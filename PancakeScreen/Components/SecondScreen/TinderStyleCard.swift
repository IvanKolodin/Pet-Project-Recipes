//
//  TinderStyleCard.swift
//  MyRecipes.swift
//
//  Created by Иван Колодин on 30.01.2023.
//

import SwiftUI

struct TinderStyleCard: View {
    @State var card: CardSettings?
    var cards = [
        CardSettings(
            image: ImagesAsset.pictureBenedict,
            title: StringsApp.breakfastBenedict,
            description: StringsApp.textBenedict
        ),
        CardSettings(
            image: ImagesAsset.picturePancakes,
            title: StringsApp.nameOfThePancakes,
            description: StringsApp.textOfThePancakes
        )
    ]
    
    var body: some View {
        tinderStyleCard
    }
    
    var tinderStyleCard: some View {
        VStack {
            ZStack(alignment: .top) {
                Colors.ColorStatic.mainBackgroundColor
                    .ignoresSafeArea()
                ForEach(Array(cards.enumerated()), id: \.offset) { index, rs in
                    CardsView(viewdata: rs)
//                        .frame(width: index != cards.count - 1 ? 280 : 311)
                        .shadow(color: .black.opacity(0.08), radius: 32)
                        .offset(y: index != cards.count - 1 ? 12 : 0)
                }
            }
        }
    }
}

