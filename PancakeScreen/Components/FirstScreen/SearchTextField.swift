//
//  SearchTextField.swift
//  MyRecipes.swift
//
//  Created by Иван Колодин on 2023-01-28.
//

import SwiftUI

struct SearchTextField: View {
    @Binding var searchText: String
    
    var body: some View {
        searchTextField
    }
    
    var searchTextField: some View {
        HStack {
            HStack {
                TextField(StringsApp.theTextOfTheSearchLine, text: $searchText)
                ImagesAsset.lupaicon
                    .foregroundColor(.yellow)
            }
            .padding()
            .background(Color.white)
            .cornerRadius(Spacing.m)
            .padding(.horizontal, Spacing.twenty)
        }
        .padding(.bottom, Spacing.fortyFive)
    }
}
