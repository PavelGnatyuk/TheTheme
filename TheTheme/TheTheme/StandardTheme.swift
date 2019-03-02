//
//  StandardTheme.swift
//  doitui
//
//  Created by Pavel Gnatyuk on 01/03/2019.
//  Copyright © 2019 Pavel Gnatyuk. All rights reserved.
//

import Foundation

public struct StandardTheme: Theme {
    public let  name: String = "Standard"
    
    public var main = ThemeMain()
    
    public let tabBar = ThemeTabBar()
    
    public let navigationBar = ThemeNavigationBar()
    
    public let tableView = ThemeTableView()
    
    public init() {
    }
}
