//
//  Theme+Apply.swift
//  doitui
//
//  Created by Pavel Gnatyuk on 01/03/2019.
//  Copyright © 2019 Pavel Gnatyuk. All rights reserved.
//

import UIKit

public extension Theme {
    func apply(for application: UIApplication) {
        applyMain(for: application)
        applyTabBar()
        applyNavigationBar()
        applyTableView()
        applyLabel()
        applyTextField()
        applyTextView()
        
        application.windows.reload()
    }
}

private extension Theme {
    func applyMain(for application: UIApplication) {
        if let tintColor = main.tintColor {
            application.windows.forEach {
                $0.tintColor = tintColor
            }
        }
    }
    
    func applyTabBar() {
        UITabBar.appearance().barStyle = tabBar.barStyle
        
        if let backgroundColor = tabBar.backgroundColor {
            UITabBar.appearance().backgroundColor = backgroundColor
        }
        
        if let barTintColor = tabBar.barTintColor {
            UITabBar.appearance().barTintColor = barTintColor
        }
        
        if let tintColor = tabBar.tintColor {
            UITabBar.appearance().tintColor = tintColor
        }

        if let unselectedItemTintColor = tabBar.unselectedTintColor {
            UITabBar.appearance().unselectedItemTintColor = unselectedItemTintColor
        }
    }
    
    func applyNavigationBar() {
        UINavigationBar.appearance().barStyle = navigationBar.barStyle

        if let backgroundColor = navigationBar.barTintColor {
            UINavigationBar.appearance().backgroundColor = backgroundColor
        }

        if let barTintColor = navigationBar.barTintColor {
            UINavigationBar.appearance().barTintColor = barTintColor
        }
    }
    
    func applyTableView() {
        if let backgroundColor = tableView.backgroundColor {
            UITableView.appearance().backgroundColor = backgroundColor
        }
    }

    func applyLabel() {
        if let textColor = label.textColor {
            UILabel.appearance().textColor = textColor
        }
        if let backgroundColor = label.backgroundColor {
            UILabel.appearance().backgroundColor = backgroundColor
        }
    }

    func applyTextField() {
        if let textColor = textField.textColor {
            UITextField.appearance().textColor = textColor
        }
        if let backgroundColor = textField.backgroundColor {
            UITextField.appearance().backgroundColor = backgroundColor
        }
    }
    
    func applyTextView() {
        if let backgroundColor = textView.backgroundColor {
            UITextView.appearance().backgroundColor = backgroundColor
        }
        if let textColor = textField.textColor {
            UITextView.appearance().textColor = textColor
        }
    }
}
