//
//  SkeletonGradient.swift
//  SkeletonView-iOS
//  Demo Project
//
//  Created by NRI-MAC2 on 12/08/21.
//

import UIKit

public struct SkeletonGradient {
    
    private var gradientColors: [UIColor]
    
    public var colors: [UIColor] {
        return gradientColors
    }
    
    public init(baseColor: UIColor, secondaryColor: UIColor? = nil) {
        if let secondary = secondaryColor {
            self.gradientColors = [baseColor, secondary, baseColor]
        } else {
            self.gradientColors = baseColor.makeGradient()
        }
    }
}
