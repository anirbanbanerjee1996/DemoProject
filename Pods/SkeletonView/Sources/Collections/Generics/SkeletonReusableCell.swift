//
//  SkeletonReusableCell.swift
//  SkeletonView-iOS
//  Demo Project
//
//  Created by NRI-MAC2 on 12/08/21.
//

import UIKit

public protocol SkeletonReusableCell { }

extension UITableViewCell: SkeletonReusableCell { }

extension UICollectionViewCell: SkeletonReusableCell { }
