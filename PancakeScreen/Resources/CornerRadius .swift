//
//  CornerRadius .swift
//  PancakeScreen
//
//  Created by Иван Колодин on 08.02.2023.
//

import SwiftUI

extension View {
    func cornerRadius(
        _ radius: CGFloat,
        corners: UIRectCorner,
        isStroked: Bool
    ) -> some View {
        clipShape(
            CornerRadiusShape(
                radius: radius,
                corners: corners,
                isStroked: isStroked
            )
        )
    }
}

struct CornerRadiusShape: Shape {
    var radius = CGFloat.infinity
    var corners = UIRectCorner.allCorners
    var isStroked: Bool
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(
            roundedRect: rect,
            byRoundingCorners: corners,
            cornerRadii: CGSize(
                width: radius,
                height: radius
            )
        )
        
        if isStroked {
            path.stroke()
        }
        
        return Path(path.cgPath)
    }
}
