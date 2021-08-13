//
//  UIView+Frame.swift
//  SkeletonView-iOS
//  Demo Project
//
//  Created by NRI-MAC2 on 12/08/21.
//

import UIKit

// MARK: Frame
extension UIView {
    
    var maxBoundsEstimated: CGRect {
        if let parentStackView = (superview as? UIStackView) {
            var origin: CGPoint = .zero
            switch parentStackView.alignment {
            case .center:
                origin.x = maxWidthEstimated / 2
            case .trailing:
                origin.x = maxWidthEstimated
            default:
                break
            }
            return CGRect(origin: origin, size: maxSizeEstimated)
        }
        return CGRect(origin: .zero, size: maxSizeEstimated)
    }
    
    var maxSizeEstimated: CGSize {
        return CGSize(width: maxWidthEstimated, height: maxHeightEstimated)
    }
    
    var maxWidthEstimated: CGFloat {
        let constraintsWidth = nonContentSizeLayoutConstraints.filter({ $0.firstAttribute == NSLayoutConstraint.Attribute.width })
        return max(between: frame.size.width, andContantsOf: constraintsWidth)
    }
    
    var maxHeightEstimated: CGFloat {
        let constraintsHeight = nonContentSizeLayoutConstraints.filter({ $0.firstAttribute == NSLayoutConstraint.Attribute.height })
        return max(between: frame.size.height, andContantsOf: constraintsHeight)
    }
    
    private func max(between value: CGFloat, andContantsOf constraints: [NSLayoutConstraint]) -> CGFloat {
        let max = constraints.reduce(value, { max, constraint in
            var tempMax = max
            if constraint.constant > tempMax { tempMax = constraint.constant }
            return tempMax
        })
        return max
    }
    
    var nonContentSizeLayoutConstraints: [NSLayoutConstraint] {
        return constraints.filter({ "\(type(of: $0))" != "NSContentSizeLayoutConstraint" })
    }
}
