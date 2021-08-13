//
//  PrepareForSkeleton.swift
//  SkeletonView-iOS
//  Demo Project
//
//  Created by NRI-MAC2 on 12/08/21.
//

import UIKit

protocol PrepareForSkeleton {
    func prepareViewForSkeleton() 
}

extension UILabel: PrepareForSkeleton {
    func prepareViewForSkeleton() {
        text = " "
        resignFirstResponder()
    }
}

extension UITextView: PrepareForSkeleton {
    func prepareViewForSkeleton() {
        text = " "
        resignFirstResponder()
    }
}

extension UIImageView: PrepareForSkeleton {
    func prepareViewForSkeleton() {
        image = nil
    }
}
