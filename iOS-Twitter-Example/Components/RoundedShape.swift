//
//  RoundedShape.swift
//  iOS-Twitter-Example
//
//  Created by Anita Eckardt on 2023-01-06.
//

import SwiftUI

struct RoundedShape: Shape {
    var corners: UIRectCorner
    var cornerRadi: CGFloat
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: cornerRadi, height: cornerRadi))
        return Path(path.cgPath)
    }
}
