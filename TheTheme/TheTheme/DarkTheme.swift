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
    
    public init() {
        main = DarkTheme.makeThemeMain()
        tabBar = DarkTheme.makeThemeTabBar()
        navigationBar = DarkTheme.makeThemeNavigationBar()
    }
}

fileprivate extension DarkTheme {
    static func makeThemeMain() -> ThemeMain {
        var builder =  ThemeMainBuilder()
        return builder.set(backgroundColor: .black).build()
    }

    static func makeThemeTabBar() -> ThemeTabBar {
        var builder =  ThemeTabBarBuilder()
        return builder.set(barStyle: .black).build()
    }
    
    static func makeThemeNavigationBar() -> ThemeNavigationBar {
        var builder = ThemeNavigationBarBuilder()
        return builder.set(barStyle: .black).build()
    }
}
