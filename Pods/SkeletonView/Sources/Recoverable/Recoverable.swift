//
//  Recoverable.swift
//  SkeletonView
//  Demo Project
//
//  Created by NRI-MAC2 on 12/08/21.
//

import UIKit

protocol Recoverable {
    var viewState: RecoverableViewState? { get set }
    func saveViewState()
    func recoverViewState(forced: Bool)
}

extension UIView: Recoverable {

    var viewState: RecoverableViewState? {
        get { return ao_get(pkey: &ViewAssociatedKeys.viewState) as? RecoverableViewState }
        set { ao_setOptional(newValue, pkey: &ViewAssociatedKeys.viewState) }
    }
    
    @objc func saveViewState() {
        viewState = RecoverableViewState(view: self)
    }
    
    @objc func recoverViewState(forced: Bool) {
        guard let safeViewState = viewState else { return }
        
        layer.cornerRadius = safeViewState.cornerRadius
        layer.masksToBounds = safeViewState.clipToBounds
        
        if safeViewState.backgroundColor != backgroundColor || forced {
            backgroundColor = safeViewState.backgroundColor
        }
    }
}

extension UILabel {
    override func saveViewState() {
        super.saveViewState()
        viewState?.text = text
    }
    
    override func recoverViewState(forced: Bool) {
        super.recoverViewState(forced: forced)
        text = text == " " || forced ? viewState?.text : text
    }
}

extension UITextView {
    override func saveViewState() {
        super.saveViewState()
        viewState?.text = text
    }
    
    override func recoverViewState(forced: Bool) {
        super.recoverViewState(forced: forced)
        text = text == " " || forced ? viewState?.text : text
    }
}

extension UIImageView {
    override func saveViewState() {
        super.saveViewState()
        viewState?.image = image
    }
    
    override func recoverViewState(forced: Bool) {
        super.recoverViewState(forced: forced)
        image = image == nil || forced ? viewState?.image : image
    }
}
