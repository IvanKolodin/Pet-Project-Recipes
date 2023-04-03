//
//  Constants.swift
//  PancakeScreen
//
//  Created by Иван Колодин on 04.02.2023.
//

import SwiftUI

enum Spacing {
    static let xxs: CGFloat = 4
    static let xs: CGFloat = 8
    static let ten: CGFloat = 10
    static let s: CGFloat = 12
    static let fourteen: CGFloat = 14
    static let m: CGFloat = 16
    static let eighteen: CGFloat = 18
    static let twenty: CGFloat = 20
    static let l: CGFloat = 24
    static let twentySix: CGFloat = 26
    static let twentyEight: CGFloat = 28
    static let thirty: CGFloat = 30
    static let xl: CGFloat = 32
    static let thirtySix: CGFloat = 36
    static let fourty: CGFloat = 40
    static let fortyFive : CGFloat = 45
    static let xxl: CGFloat = 48
    static let fifty: CGFloat = 50
    static let fiftyFive: CGFloat = 55
    static let sixtyEight: CGFloat = 68
    static let imageHeight: CGFloat = 200
    static let menuCardHeight: CGFloat = 202
    static let twoHundredTwenty: CGFloat = 220
    static let firstStepImageHeight: CGFloat = 250
    static let imageWidth: CGFloat = 270
    static let imageBackgroundWidth: CGFloat = 300
    static let firstStepImageWidth: CGFloat = 340
    static let fourHundred: CGFloat = 400
    static let imageBackgroundHeight: CGFloat = 480
}

enum StringsApp {
    static let whatToCook = "что приготовить"
    static let theTextOfTheSearchLine = "Поиск..."
    static let breakfast = "завтрак"
    static let lunch = "обед"
    static let dinner = "ужин"
    static let snack = "перекус"
    static let labelOfTheSecondScreen = "завтрак"
    static let nameOfThePancakes = "Блины с творогом, вишней, клубничным и ванильным соусом"
    static let textOfThePancakes = "Предлагаю вам приготовить невероятно вкусный десерт – нежные блинчики со сладким творожным кремом и сочной вишней. Подается с клубничным или ванильным соусом."
    static let breakfastBenedict = "Завтрак Бенедикт"
    static let textBenedict = "Это изысканный и прекрасный европейский завтрак, который легко можно приготовить для себя и своей половинки в воскресное утро."
    static let min15 = "15 минут"
    static let min20 = "20 минут"
    static let cooking = "приготовление"
    static let ingredients = "ингредиенты"
    static let stepOne = "Клубнику измельчить в блендере."
    
    static let repost = "repost"
    
    static let findOutSoon = "узнай скорее"
}


enum ImagesAsset {
    static let theIconBack = Image(
        systemName: "chevron.left"
    )
    static let hearticon = Image(
        systemName: "heart.fill"
    )
    static let lupaicon = Image(
        systemName: "magnifyingglass"
    )
    static let timerIcon = Image(
        systemName: "timer"
    )
    static let arrowshapeTurnUpForwardFill = Image(
        systemName: "arrowshape.turn.up.forward.fill"
    )
    static let multiply = Image(
        systemName: "multiply"
    )
    
    static let breakfastPicture = Image("breakfast")
    static let dinnerPicture = Image("dinner")
    static let lunchPicture = Image("lunch")
    static let snackPicture = Image("snack")
    
    static let tabBarKnifePicture = Image("knife")
    static let tabBarHeartPicture = Image("heart")
    static let tabBarTimePicture = Image("time")
    static let tabBarSettings = Image("settings")
    
    static let picturePancakes = Image("Pancake")
    static let pictureBenedict = Image("Benedict")
    
    static let strawberriesInABlender = Image("blender")
    static let addWater = Image("Bitmap 1")
    
    static let splashScreen = Image("SplashScreen")
    static let prescriptionСard = Image("PrescriptionСard")
    
}

enum Colors {
    enum ColorStatic {
        static let mainBackgroundColor = Color(hex: "#F5F3F0")
        
        static let breakfastColor = Color(hex: "#FEBD2E")
        static let lunchColor = Color(hex: "#9EDCFF")
        static let dinnerColor = Color(hex: "#5DDAB5")
        static let snackColor = Color(hex: "#9CBE4C")
    }
    
    enum ColorString {
        static let breakfastColor: String = "#FEBD2E"
        static let lunchColor = "#9EDCFF"
        static let dinnerColor = "#5DDAB5"
        static let snackColor = "#9CBE4C"
    }
}

enum Fonts {
    static let mediumSize = Font.custom(kartonFontName, size: Spacing.m)
    static let thirtySixSize = Font.custom(kartonFontName, size: Spacing.thirtySix)
    static let sizeThirty = Font.custom(kartonFontName, size: Spacing.thirty)
    static let sizeTwenty = Font.custom(kartonFontName, size: Spacing.twenty)
    
    static let kartonFontName = "Karton2Regular"
}
