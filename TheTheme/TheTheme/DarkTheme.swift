//
//  DarkTheme.swift
//  doitui
//
//  Created by Pavel Gnatyuk on 01/03/2019.
//  Copyright © 2019 Pavel Gnatyuk. All rights reserved.
//

import Foundation

public struct DarkTheme: Theme {
    public let window = ThemeWindow()
    
    public let tabBar: ThemeTabBar
    
    public let navigationBar: ThemeNavigationBar
    
    public let tableView = ThemeTableView()
    
    public init() {
        tabBar = DarkTheme.makeThemeTabBar()
        navigationBar = DarkTheme.makeThemeNavigationBar()
    }
}

fileprivate extension DarkTheme {
    static func makeThemeTabBar() -> ThemeTabBar {
        var builder =  ThemeTabBarBuilder()
        return builder.set(barStyle: .black).build()
    }
    
    static func makeThemeNavigationBar() -> ThemeNavigationBar {
        var builder = ThemeNavigationBarBuilder()
        return builder.set(barStyle: .black).build()
    }
}
