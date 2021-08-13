//
//  SkeletonCollectionDelegate.swift
//  SkeletonView-iOS
//  Demo Project
//
//  Created by NRI-MAC2 on 12/08/21.
//

import UIKit

class SkeletonCollectionDelegate: NSObject {
    
    weak var originalTableViewDelegate: SkeletonTableViewDelegate?
    weak var originalCollectionViewDelegate: SkeletonCollectionViewDelegate?
    
    init(tableViewDelegate: SkeletonTableViewDelegate? = nil, collectionViewDelegate: SkeletonCollectionViewDelegate? = nil) {
        self.originalTableViewDelegate = tableViewDelegate
        self.originalCollectionViewDelegate = collectionViewDelegate
    }
}

// MARK: - UITableViewDataSource
extension SkeletonCollectionDelegate: UITableViewDelegate { }

// MARK: - UICollectionViewDataSource
extension SkeletonCollectionDelegate: UICollectionViewDelegate { }
