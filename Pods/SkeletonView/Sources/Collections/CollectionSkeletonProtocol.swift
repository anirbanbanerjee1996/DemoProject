//
//  CollectionSkeleton.swift
//  SkeletonView-iOS
//
//  Demo Project
//
//  Created by NRI-MAC2 on 12/08/21.
//

import UIKit

enum CollectionAssociatedKeys {
    static var dummyDataSource = "dummyDataSource"
    static var dummyDelegate = "dummyDelegate"
}

protocol CollectionSkeleton {
    var skeletonDataSource: SkeletonCollectionDataSource? { get set }
    var skeletonDelegate: SkeletonCollectionDelegate? { get set }
    var estimatedNumberOfRows: Int { get }
    
    func addDummyDataSource()
    func removeDummyDataSource(reloadAfter: Bool)
    func disableUserInteraction()
    func enableUserInteraction()
}

extension CollectionSkeleton where Self: UIScrollView {
    var estimatedNumberOfRows: Int { return 0 }
    func addDummyDataSource() {}
    func removeDummyDataSource(reloadAfter: Bool) {}
    func disableUserInteraction() { isScrollEnabled = false }
    func enableUserInteraction() { isScrollEnabled = true }
}
