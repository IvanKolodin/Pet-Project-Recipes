////
////  LikeAndDislike.swift
////  PancakeScreen
////
////  Created by Иван Колодин on 31.03.2023.
////
//
//import SwiftUI
//
//struct LikeAndDislike: View {
//    
//    @Environment(\.presentationMode) var presentationMode
//    
//    @State private var isTapped = false
//    
//    var body: some View {
//        HStack {
//            Spacer()
//            ZStack {
//                Circle()
//                    .frame(width: Spacing.sixtyEight,
//                           height: Spacing.sixtyEight)
//                    .foregroundColor(Colors.ColorStatic.breakfastColor)
//                ImagesAsset.hearticon
//                    .resizable()
//                    .scaledToFit()
//                    .frame(width: Spacing.thirty,
//                           height: Spacing.thirty)
//                    .foregroundColor(isTapped ? Color.red : Color.white)
//                    .padding()
//            }
//            .onTapGesture {
//                isTapped.toggle()
//            }
//            Spacer()
//            ZStack {
//                Circle()
//                    .frame(width: Spacing.sixtyEight,
//                           height: Spacing.sixtyEight)
//                    .foregroundColor(Color.red)
//                ImagesAsset.multiply
//                    .resizable()
//                    .scaledToFit()
//                    .frame(width: Spacing.thirty,
//                           height: Spacing.twenty)
//                    .foregroundColor(isTapped ? Color.black : Color.white)
//                    .padding()
//            }
//            .onTapGesture {
//                isTapped.toggle()
//            }
//            Spacer()
//        }
//    }
//}
