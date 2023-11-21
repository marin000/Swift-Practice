//
//  RoundedCornerShape.swift
//  shoppingApp
//
//  Created by Marin Buric on 17.11.2023..
//

import SwiftUI

struct RoundedCornerShape: Shape {
    let corners: UIRectCorner
    let radius: CGFloat
    
    func path(in react: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: react, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}
