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

struct ThemeMainBuilder {
    private var theme = ThemeMain()
    
    mutating func set(tintColor: UIColor) -> ThemeMainBuilder {
        theme.tintColor = tintColor
        return self
    }

    mutating func set(backgroundColor: UIColor) -> ThemeMainBuilder {
        theme.backgroundColor = backgroundColor
        return self
    }

    func build() -> ThemeMain {
        return theme
    }
}

struct ThemeTabBarBuilder {
    private var theme = ThemeTabBar()
    
    mutating func set(barStyle: UIBarStyle) -> ThemeTabBarBuilder {
        theme.barStyle = barStyle
        return self
    }
    
    mutating func set(tintColor: UIColor) -> ThemeTabBarBuilder {
        theme.tintColor = tintColor
        return self
    }
    
    mutating func set(barTintColor: UIColor) -> ThemeTabBarBuilder {
        theme.barTintColor = barTintColor
        return self
    }
    
    mutating func set(unselectedTintColor: UIColor) -> ThemeTabBarBuilder {
        theme.unselectedTintColor = unselectedTintColor
        return self
    }
    
    mutating func set(backgroundColor: UIColor) -> ThemeTabBarBuilder {
        theme.backgroundColor = backgroundColor
        return self
    }
    
    func build() -> ThemeTabBar {
        return theme
    }
}

struct ThemeNavigationBarBuilder {
    private var theme = ThemeNavigationBar()
    
    mutating func set(barStyle: UIBarStyle) -> ThemeNavigationBarBuilder {
        theme.barStyle = barStyle
        return self
    }
    
    mutating func set(barTintColor: UIColor) -> ThemeNavigationBarBuilder {
        theme.barTintColor = barTintColor
        return self
    }
    
    mutating func set(backgroundColor: UIColor) -> ThemeNavigationBarBuilder {
        theme.backgroundColor = backgroundColor
        return self
    }
    
    func build() -> ThemeNavigationBar {
        return theme
    }
}

struct ThemeTableViewBuilder {
    private var theme = ThemeTableView()
    
    mutating func set(backgroundColor: UIColor) -> ThemeTableViewBuilder {
        theme.backgroundColor = backgroundColor
        return self
    }
    
    func build() -> ThemeTableView {
        return theme
    }
}
