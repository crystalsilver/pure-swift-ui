//
//  CGPoint+Convenience.swift
//  
//
//  Created by Adam Fordyce on 05/11/2019.
//  Copyright © 2019 Adam Fordyce. All rights reserved.
//

import CoreGraphics

public extension CGPoint {
    
    var asCGSize: CGSize {
        CGSize(x, y)
    }

    init<TX: UINumericType, TY: UINumericType>(_ x: TX, _ y: TY) {
        self.init(x.asCGFloat, y.asCGFloat)
    }
    
    init(_ x: CGFloat, _ y: CGFloat) {
        self.init(x: x, y: y)
    }
    
    func scaled<T: UINumericType>(_ scale: T) -> CGSize {
        .init(xScaled(scale), yScaled(scale))
    }
    
    func xScaled<T: UINumericType>(_ scale: T) -> CGFloat {
        x * scale.asCGFloat
    }
    
    func yScaled<T: UINumericType>(_ scale: T) -> CGFloat {
        y * scale.asCGFloat
    }
    
    func clamped<T_FROM: UINumericType, T_TO: UINumericType>(from: T_FROM, to: T_TO) -> CGPoint {
        clamped(from: from.asCGFloat, to: to.asCGFloat)
    }
    
    func clamped(from: CGFloat, to: CGFloat) -> CGPoint {
        .init(self.x.clamped(from: from, to: to), self.y.clamped(from: from, to: to))
    }
}

// MARK: ----- OPERATOR OVERLOADS

public extension CGPoint {
    static func -(lhs: CGPoint, rhs: CGPoint) -> CGPoint {
        .init(lhs.x - rhs.x, lhs.y - rhs.y)
    }
    
    static func +(lhs: CGPoint, rhs: CGPoint) -> CGPoint {
        .init(lhs.x + rhs.x, lhs.y + rhs.y)
    }
}
