//
//  NameAndDescriptionOfPancakes.swift
//  PancakeScreen
//
//  Created by Иван Колодин on 30.03.2023.
//

import SwiftUI

struct NameAndDescriptionOfPancakes: View {
    var body: some View {
        VStack {
            Text(StringsApp.nameOfThePancakes)
                .font(Fonts.thirtySixSize)
                .padding(.bottom, 8)
            Text(StringsApp.textOfThePancakes)
            
        }
    }
}
