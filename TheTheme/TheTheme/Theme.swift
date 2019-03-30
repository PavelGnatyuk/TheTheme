//
//  Theme.swift
//  TheTheme
//
//  Created by Pavel Gnatyuk on 02/03/2019.
//  Copyright © 2019 Pavel Gnatyuk. All rights reserved.
//

import UIKit.UIColor
import UIKit.UIBarCommon

public protocol Theme {
    var name: String { get }
    var main: ThemeMain { get }
    var tabBar: ThemeTabBar { get }
    var navigationBar: ThemeNavigationBar { get }
    var tableView: ThemeTableView { get }
    var label: ThemeLabel { get }
    var textField: ThemeTextField { get }
    var textView: ThemeTextView { get }
}

public struct ThemeMain {
    /// Global tintColor
    public var tintColor: UIColor?
    
    /// Background for the window and view controllers
    public var backgroundColor: UIColor = .white
    
}

public struct ThemeTabBar {
    var barStyle: UIBarStyle = .default
    
    var tintColor: UIColor?
    var barTintColor: UIColor?
    var selectedTintColor: UIColor?
    var unselectedTintColor: UIColor?
    var backgroundColor: UIColor?
}

public struct ThemeNavigationBar {
    var barStyle: UIBarStyle = .default
    
    var barTintColor: UIColor?
    var backgroundColor: UIColor?
}

public struct ThemeTableView {
    var backgroundColor: UIColor?
}

public struct ThemeLabel {
    var textColor: UIColor?
    var font: UIFont?
    var backgroundColor: UIColor?
}

public struct ThemeTextField {
    var textColor: UIColor?
    var font: UIFont?
    var backgroundColor: UIColor?
}

public struct ThemeTextView {
    var backgroundColor: UIColor?
    var font: UIFont?
    var textColor: UIColor?
}

class ThemeMainBuilder {
    private var theme = ThemeMain()
    
    func set(tintColor: UIColor) -> ThemeMainBuilder {
        theme.tintColor = tintColor
        return self
    }

    func set(backgroundColor: UIColor) -> ThemeMainBuilder {
        theme.backgroundColor = backgroundColor
        return self
    }

    func build() -> ThemeMain {
        return theme
    }
}

class ThemeTabBarBuilder {
    private var theme = ThemeTabBar()
    
    func set(barStyle: UIBarStyle) -> ThemeTabBarBuilder {
        theme.barStyle = barStyle
        return self
    }
    
    func set(tintColor: UIColor) -> ThemeTabBarBuilder {
        theme.tintColor = tintColor
        return self
    }
    
    func set(barTintColor: UIColor) -> ThemeTabBarBuilder {
        theme.barTintColor = barTintColor
        return self
    }
    
    func set(unselectedTintColor: UIColor) -> ThemeTabBarBuilder {
        theme.unselectedTintColor = unselectedTintColor
        return self
    }
    
    func set(backgroundColor: UIColor) -> ThemeTabBarBuilder {
        theme.backgroundColor = backgroundColor
        return self
    }
    
    func build() -> ThemeTabBar {
        return theme
    }
}

class ThemeNavigationBarBuilder {
    private var theme = ThemeNavigationBar()
    
    func set(barStyle: UIBarStyle) -> ThemeNavigationBarBuilder {
        theme.barStyle = barStyle
        return self
    }
    
    func set(barTintColor: UIColor) -> ThemeNavigationBarBuilder {
        theme.barTintColor = barTintColor
        return self
    }
    
    func set(backgroundColor: UIColor) -> ThemeNavigationBarBuilder {
        theme.backgroundColor = backgroundColor
        return self
    }
    
    func build() -> ThemeNavigationBar {
        return theme
    }
}

class ThemeTableViewBuilder {
    private var theme = ThemeTableView()
    
    func set(backgroundColor: UIColor) -> ThemeTableViewBuilder {
        theme.backgroundColor = backgroundColor
        return self
    }
    
    func build() -> ThemeTableView {
        return theme
    }
}

class ThemeLabelBuilder {
    private var theme = ThemeLabel()
    
    func set(textColor: UIColor) -> Self {
        theme.textColor = textColor
        return self
    }
    
    func set(font: UIFont) -> Self {
        theme.font = font
        return self
    }
    
    func set(backgroundColor: UIColor) -> Self {
        theme.backgroundColor = backgroundColor
        return self
    }

    func build() -> ThemeLabel {
        return theme
    }
}

class ThemeTextFieldBuilder {
    private var theme = ThemeTextField()
    
    func set(textColor: UIColor) -> ThemeTextFieldBuilder {
        theme.textColor = textColor
        return self
    }
    
    func set(backgroundColor: UIColor) -> ThemeTextFieldBuilder {
        theme.backgroundColor = backgroundColor
        return self
    }
    
    func build() -> ThemeTextField {
        return theme
    }
}

class ThemeTextViewBuilder {
    private var theme = ThemeTextView()
    
    func set(backgroundColor: UIColor) -> ThemeTextViewBuilder {
        theme.backgroundColor = backgroundColor
        return self
    }
    
    func set(textColor: UIColor) -> ThemeTextViewBuilder {
        theme.textColor = textColor
        return self
    }

    func build() -> ThemeTextView {
        return theme
    }
}
