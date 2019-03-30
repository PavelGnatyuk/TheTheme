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
    
    public var main = StandardTheme.makeThemeMain()
    
    public let tabBar = ThemeTabBar()
    
    public let navigationBar = ThemeNavigationBar()
    
    public let tableView = ThemeTableView()
    
    public let label = StandardTheme.makeThemeLabel()

    public let textField = StandardTheme.makeThemeTextField()
    
    public let textView = StandardTheme.makeThemeTextView()
    
    public init() {
    }
}

fileprivate extension StandardTheme {
    static func makeThemeMain() -> ThemeMain {
        return ThemeMainBuilder().set(backgroundColor: .white).build()
    }

    static func makeThemeLabel() -> ThemeLabel {
        return ThemeLabelBuilder().set(textColor: .green).set(backgroundColor: .yellow).build()
    }

    static func makeThemeTextField() -> ThemeTextField {
        return ThemeTextFieldBuilder().set(textColor: .blue).set(backgroundColor: .orange).build()
    }

    static func makeThemeTextView() -> ThemeTextView {
        return ThemeTextViewBuilder().set(backgroundColor: .lightGray).build()
    }
}
