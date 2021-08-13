//
//  SkeletonCollectionViewProtocols.swift
//  SkeletonView-iOS
//  Demo Project
//
//  Created by NRI-MAC2 on 12/08/21.
//

import UIKit


public protocol SkeletonCollectionViewDataSource: UICollectionViewDataSource {
    func numSections(in collectionSkeletonView: UICollectionView) -> Int
    func collectionSkeletonView(_ skeletonView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    func collectionSkeletonView(_ skeletonView: UICollectionView, cellIdentifierForItemAt indexPath: IndexPath) -> ReusableCellIdentifier
}

public extension SkeletonCollectionViewDataSource {
    
    func collectionSkeletonView(_ skeletonView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return skeletonView.estimatedNumberOfRows
    }
    
    func numSections(in collectionSkeletonView: UICollectionView) -> Int { return 1 }
}

public protocol SkeletonCollectionViewDelegate: UICollectionViewDelegate { }

