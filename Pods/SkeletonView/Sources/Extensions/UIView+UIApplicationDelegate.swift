//
//  UIView+UIApplicationDelegate.swift
//  SkeletonView-iOS
//  Demo Project
//
//  Created by NRI-MAC2 on 12/08/21.
//

import UIKit

extension UIView {
    
    enum Constants {
        static let becomeActiveNotification = UIApplication.didBecomeActiveNotification
        static let enterForegroundNotification = UIApplication.didEnterBackgroundNotification
        static let needAnimatedSkeletonKey = "needAnimateSkeleton"
    }
    
    func addAppNotificationsObservers() {
        NotificationCenter.default.addObserver(self, selector: #selector(appDidBecomeActive), name: Constants.becomeActiveNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(appDidEnterBackground), name: Constants.enterForegroundNotification, object: nil)
    }
    
    func removeAppNoticationsObserver() {
        NotificationCenter.default.removeObserver(self, name: Constants.becomeActiveNotification, object: nil)
        NotificationCenter.default.removeObserver(self, name: Constants.enterForegroundNotification, object: nil)
    }
    
    @objc func appDidBecomeActive() {
        if UserDefaults.standard.bool(forKey: Constants.needAnimatedSkeletonKey) {
            startSkeletonAnimation()
        }
    }
    
    @objc func appDidEnterBackground() {
        UserDefaults.standard.set((isSkeletonActive && skeletonIsAnimated), forKey: Constants.needAnimatedSkeletonKey)
    }
}
