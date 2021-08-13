//
//  UIView+CollectionSkeleton.swift
//  SkeletonView-iOS
//  Demo Project
//
//  Created by NRI-MAC2 on 12/08/21.
//

import UIKit

extension UIView {
    func addDummyDataSourceIfNeeded() {
        guard let collection = self as? CollectionSkeleton else { return }
        collection.addDummyDataSource()
        collection.disableUserInteraction()
    }
    
    func removeDummyDataSourceIfNeeded(reloadAfter reload: Bool = true) {
        guard let collection = self as? CollectionSkeleton else { return }
        collection.removeDummyDataSource(reloadAfter: reload)
        collection.enableUserInteraction()
    }
}
