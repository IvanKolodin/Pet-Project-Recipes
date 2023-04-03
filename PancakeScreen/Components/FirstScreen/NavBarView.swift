//
//  NavBar.swift
//  MyRecipes.swift
//
//  Created by Иван Колодин on 23.01.2023.
//

import SwiftUI

struct NavBarView: View {
    
    var body: some View {
        navBarView
    }
    
    var navBarView: some View {
        HStack(spacing: 0) {
            Text(StringsApp.whatToCook)
                .font(Fonts.thirtySixSize)
                .font(.largeTitle)
                .padding(.top, Spacing.fourty)
                .padding(.horizontal, Spacing.fiftyFive)
                .foregroundColor(.black)
        }
    }
}
