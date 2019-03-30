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

public protocol ThemeElement {}

public struct ThemeMain: ThemeElement {
    /// Global tintColor
    public var tintColor: UIColor?
    
    /// Background for the window and view controllers
    public var backgroundColor: UIColor?
    
}

public struct ThemeTabBar: ThemeElement {
    public var barStyle: UIBarStyle = .default
    
    public var tintColor: UIColor?
    public var barTintColor: UIColor?
    public var selectedTintColor: UIColor?
    public var unselectedTintColor: UIColor?
    public var backgroundColor: UIColor?
}

public struct ThemeNavigationBar: ThemeElement {
    public var barStyle: UIBarStyle = .default
    
    public var barTintColor: UIColor?
    public var backgroundColor: UIColor?
}

public struct ThemeTableView: ThemeElement {
    public var backgroundColor: UIColor?
}

public struct ThemeLabel: ThemeElement {
    public var textColor: UIColor?
    public var font: UIFont?
    public var backgroundColor: UIColor?
}

public struct ThemeTextField: ThemeElement {
    public var textColor: UIColor?
    public var font: UIFont?
    public var backgroundColor: UIColor?
}

public struct ThemeTextView: ThemeElement {
    public var backgroundColor: UIColor?
    public var font: UIFont?
    public var textColor: UIColor?
}
