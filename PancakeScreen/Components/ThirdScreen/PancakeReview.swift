//
//  PancakeReview.swift
//  PancakeScreen
//
//  Created by Иван Колодин on 03.02.2023.
//

import SwiftUI

struct PancakeReview: View {
    
    let sizePancake: CGFloat = Spacing.fourHundred
    let opacityBackground: Double = 0.5
    
    @Environment(\.presentationMode) var presentationMode
    
    @State private var isTapped = false
    
    var body: some View {
        ZStack {
            pancakePicture
            buttonsNavbar
            cookingTime
        }
        .navigationBarBackButtonHidden(true)
    }
    
    var pancakePicture: some View {
        VStack {
            ImagesAsset.picturePancakes
                .resizable()
                .ignoresSafeArea()
                .frame(width: sizePancake,
                       height: sizePancake)
                .cornerRadius(Spacing.fourty)
        }
    }
    
    var buttonsNavbar : some View {
        HStack {
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }) {
                ZStack {
                    Circle()
                        .frame(width: Spacing.fourty,
                               height: Spacing.fourty)
                        .foregroundColor(Color.black.opacity(0.3))
                    ImagesAsset.theIconBack
                        .resizable()
                        .scaledToFit()
                        .frame(width: Spacing.m,
                               height: Spacing.m)
                        .foregroundColor(.white)
                        .padding()
                }
            }
            Spacer()
            ZStack {
                Circle()
                    .frame(width: Spacing.fourty,
                           height: Spacing.fourty)
                    .foregroundColor(Color.black.opacity(0.3))
                ImagesAsset.arrowshapeTurnUpForwardFill
                    .resizable()
                    .frame(width: Spacing.m,
                           height: Spacing.m)
                    .foregroundColor(Color.white)
                    .padding()
            }
            .onTapGesture {
                print(StringsApp.repost)
            }
            ZStack {
                Circle()
                    .frame(width: Spacing.fourty,
                           height: Spacing.fourty)
                    .foregroundColor(Color.black.opacity(0.3))
                ImagesAsset.hearticon
                    .resizable()
                    .frame(width: Spacing.m,
                           height: Spacing.m)
                    .foregroundColor(isTapped ? Color.red : Color.white)
                    .padding()
            }
            .onTapGesture {
                isTapped.toggle()
            }
        }
        .padding(.horizontal, Spacing.m)
        .padding(.bottom, Spacing.twoHundredTwenty)
    }
    
    var cookingTime: some View {
        HStack(spacing: 0) {
            ImagesAsset.timerIcon
                .resizable()
                .frame(width: Spacing.l, height: Spacing.l)
                .foregroundColor(.white)
                .padding(Spacing.ten)
            Text(StringsApp.min15)
                .foregroundColor(.white)
                .font(.title3)
                .padding(.trailing)
        }
        .background(.black.opacity(0.4))
        .cornerRadius(Spacing.m)
        .padding(.top, Spacing.imageWidth)
    }
}
