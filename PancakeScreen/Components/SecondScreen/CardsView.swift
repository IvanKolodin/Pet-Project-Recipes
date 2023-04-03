//
//  CardsView.swift
//  MyRecipes.swift
//
//  Created by Иван Колодин on 31.01.2023.
//

import SwiftUI

struct CardsView: View {
    @State private var offset = CGSize.zero
    @State private var color: Color = .black
    
    let offsetY: Double = 0.4
    
    @State var viewdata: CardSettings
    
    var body: some View {
        NavigationLink (
            destination: {
                RecipeTextView()
            },label: {
                ZStack {
                    ImagesAsset.prescriptionСard
                        .resizable()
                        .frame(width: 311, height: 480)
                    VStack {
                        Spacer()
                        ZStack(alignment: .bottomLeading) {
                            ImagesAsset.pictureBenedict
                                .resizable()
                                .scaledToFit()
                                .frame(width: 287,
                                       height: 210)
                                .padding(.top, Spacing.s)
                            HStack(spacing: 0) {
                                ImagesAsset.timerIcon
                                    .resizable()
                                    .frame(width: Spacing.l, height: Spacing.l)
                                    .foregroundColor(.white)
                                    .padding(Spacing.xs)
                                Text(StringsApp.min20)
                                    .foregroundColor(.white)
                                    .font(Fonts.sizeTwenty)
                                    .padding(.trailing, Spacing.xs)
                            }
                            .background(.black.opacity(0.4))
                            .cornerRadius(Spacing.m)
                            .padding(Spacing.s)
                        }
                        Spacer()
                            .frame(height: 32)
                        VStack(alignment: .leading) {
                            Text(StringsApp.breakfastBenedict)
                                .padding(.bottom, 16)
                                .font(Fonts.sizeTwenty)
                                .bold()
                                .foregroundColor(.black)
                            Text(StringsApp.textBenedict)
                                .frame(width: 287, height: 146, alignment: .topLeading)
                                .truncationMode(.tail)
                                .foregroundColor(.black)
                        }
                        .padding(.vertical, Spacing.s)
                        Spacer()
                    }
                }
                .offset(x: offset.width * 1,
                        y: offset.height * offsetY)
                .rotationEffect(.degrees(Double(offset.width / Spacing.fourty)))
                .gesture(
                    DragGesture()
                        .onChanged { gesture in
                            offset = gesture.translation
                            withAnimation {
                                changeColor(width: offset.width)
                            }
                        }
                        .onEnded { _ in
                            withAnimation {
                                swipeCards(width: offset.width)
                                changeColor(width: offset.width)
                            }
                        }
                )
            }
        )
        
    }
    func swipeCards(width: CGFloat) {
        let maxWidth: CGFloat = 500
        let minWidth: CGFloat = 150
        switch width {
        case -maxWidth...(-minWidth):
            offset = CGSize(width: -maxWidth, height: 0)
        case minWidth...maxWidth:
            offset = CGSize(width: maxWidth, height: 0)
        default:
            offset = .zero
        }
    }
    func changeColor(width: CGFloat) {
        let maxWidth: CGFloat = 500
        let minWidth: CGFloat = 130
        switch width {
        case -maxWidth...(-minWidth):
            color = .red
        case minWidth...maxWidth:
            color = .green
        default:
            color = .black
        }
    }
}

struct CardSettings: Identifiable {
    let id = UUID()
    let image: Image
    let title: String
    let description: String
}

