//
//  RecoverableViewState.swift
//  SkeletonView
//  Demo Project
//
//  Created by NRI-MAC2 on 12/08/21.
//

import UIKit

struct RecoverableViewState {
    var backgroundColor: UIColor?
    var cornerRadius: CGFloat
    var clipToBounds: Bool
    
    // UI text
    var text: String?
    
    // UI image
    var image: UIImage?
}

extension RecoverableViewState {
    init(view: UIView) {
        self.backgroundColor = view.backgroundColor
        self.clipToBounds = view.layer.masksToBounds
        self.cornerRadius = view.layer.cornerRadius
    }
}
