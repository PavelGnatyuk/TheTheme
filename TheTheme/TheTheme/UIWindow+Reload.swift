//
//  UIWindow+Reload.swift
//
//  Reload all views in a window.
//
//  [UIAppearance](https://developer.apple.com/documentation/uikit/uiappearance)
//  iOS applies appearance changes when a view enters a window, it doesn’t change the appearance of a view that’s already in
//  a window. To change the appearance of a view that’s currently in a window, remove the view from the view hierarchy and
//  then put it back.
//
//
//  Apply UIAppearance immediately on the screen
//  https://ngs.io/2014/10/26/refresh-ui-appearance/
//
//  https://stackoverflow.com/questions/20875107/force-view-controller-to-reload-to-refresh-uiappearance-changes
//
//  Created by Pavel Gnatyuk on 15/02/2019.
//  Copyright © 2019 Pavel Gnatyuk. All rights reserved.
//

import UIKit.UIWindow

extension UIWindow {
    
    /**
     Reload all views in the window.
     
     [UIAppearance](https://developer.apple.com/documentation/uikit/uiappearance)
     
     iOS applies appearance changes when a view enters a window, it doesn’t change the appearance of a view that’s already in a window. To change the appearance of a view that’s currently in a window, remove the view from the view hierarchy and then put it back.
    */
    func reload() {
        subviews.forEach { (view) in
            view.removeFromSuperview()
            addSubview(view)
        }
    }
}

extension Array where Element == UIWindow {
    /// Unload all views for each `UIWindow` and add back.
    /// Useful for applying `UIAppearance` changes to existing views.
    func reload() {
        forEach { $0.reload() }
    }
}
