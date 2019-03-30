//
//  DarkTheme.swift
//  doitui
//
//  Created by Pavel Gnatyuk on 01/03/2019.
//  Copyright © 2019 Pavel Gnatyuk. All rights reserved.
//

import Foundation

public struct DarkTheme: Theme {
    public let name: String = "Dark"
    
    public let main: ThemeMain
    
    public let tabBar: ThemeTabBar
    
    public let navigationBar: ThemeNavigationBar
    
    public let tableView = ThemeTableView()
    
    public let label = ThemeLabel()

    public let textField = ThemeTextField()
    
    public let textView = ThemeTextView()
    
    public init() {
        main = DarkTheme.makeThemeMain()
        tabBar = DarkTheme.makeThemeTabBar()
        navigationBar = DarkTheme.makeThemeNavigationBar()
    }
}

fileprivate extension DarkTheme {
    static func makeThemeMain() -> ThemeMain {
        return ThemeMainBuilder().set(backgroundColor: .black).build()
    }

    static func makeThemeTabBar() -> ThemeTabBar {
        return ThemeTabBarBuilder().set(barStyle: .black).build()
    }
    
    static func makeThemeNavigationBar() -> ThemeNavigationBar {
        return ThemeNavigationBarBuilder().set(barStyle: .black).build()
    }
}
