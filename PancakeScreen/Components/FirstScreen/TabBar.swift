//
//  TabBar.swift
//  MyRecipes.swift
//
//  Created by Иван Колодин on 04.02.2023.
//

import SwiftUI

struct TabBar: View {
    @State var selected = 0
    
    let itemsArrey = [
        ImagesAsset.tabBarKnifePicture,
        ImagesAsset.tabBarHeartPicture,
        ImagesAsset.tabBarTimePicture,
        ImagesAsset.tabBarSettings
    ]
    
    var body: some View {
        tabBar
    }
    
    var tabBar: some View {
        ZStack {
            HStack {
                ForEach(0..<itemsArrey.count, id: \.self) { index in
                    if index == 0  {
                        Spacer().frame(width: Spacing.fifty)
                    }
                    TabBarItems(
                        image: itemsArrey[index],
                        index: index,
                        action: { selectedItem in
                            self.selected = selectedItem
                        },
                        selectedIndex: $selected
                    )
                    Spacer()
                        .frame(width: Spacing.fifty)
                }
            }
            .padding()
            .padding(.horizontal, Spacing.twenty)
            .ignoresSafeArea()
            .background(Colors.ColorStatic.mainBackgroundColor)
        }
    }
}
struct TabBarItems: View {
    let image: Image
    let index: Int
    let action: (Int) -> Void
    @Binding var selectedIndex: Int
    
    var body: some View {
        Button(
            action: {
                selectedIndex = index
                action(index)
            },
            label: {
                image
            }
        )
        .foregroundColor(selectedIndex == index ? .black : .gray)
    }
}
