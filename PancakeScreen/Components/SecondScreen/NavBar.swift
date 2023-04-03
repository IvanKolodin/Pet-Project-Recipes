//
//  NavBar.swift
//  PancakeScreen
//
//  Created by Иван Колодин on 31.03.2023.
//

//import SwiftUI
//
//struct NavBar: View {
//    
//    let title: String
//    @Environment(\.presentationMode) var presentationMode
//    
//    var body: some View {
//        HStack(spacing: 0) {
//            Button(action: {
//                presentationMode.wrappedValue.dismiss()
//            }) {
//                ImagesAsset.theIconBack
//                    .resizable()
//                    .scaledToFit()
//                    .frame(width: Spacing.l,
//                           height: Spacing.l)
//                    .foregroundColor(.black)
//                
//            }
//            Spacer()
//            Text(title)
//                .font(Fonts.thirtySixSize)
//            Spacer()
//            ImagesAsset.theIconBack
//                .resizable()
//                .scaledToFit()
//                .frame(width: Spacing.l,
//                       height: Spacing.l)
//                .opacity(0.01)
//        }
//        .padding(.horizontal, Spacing.m)
//    }
//}
