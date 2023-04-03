//
//  PancakeText.swift
//  PancakeScreen
//
//  Created by Иван Колодин on 03.02.2023.
//

import SwiftUI

struct PancakeText: View {
    let description = StringsApp.textOfThePancakes
    
    var body: some View {
        HStack {
            Text(description)
                .padding(.horizontal, Spacing.m)
        }
    }
}


