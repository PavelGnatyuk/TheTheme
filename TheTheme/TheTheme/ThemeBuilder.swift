//
//  ThemeBuilder.swift
//  TheTheme
//
//  Created by Pavel Gnatyuk on 30/03/2019.
//  Copyright © 2019 Pavel Gnatyuk. All rights reserved.
//

import Foundation

class ThemeBuilder<T: ThemeElement> {
    fileprivate var element: T

    init(element: T) {
        self.element = element
    }
    
    func build() -> T {
        return element
    }
}

class ThemeMainBuilder: ThemeBuilder<ThemeMain> {
    
    init() {
        super.init(element: ThemeMain())
    }
    
    func set(tintColor: UIColor) -> Self {
        element.tintColor = tintColor
        return self
    }
    
    func set(backgroundColor: UIColor) -> Self {
        element.backgroundColor = backgroundColor
        return self
    }
}

class ThemeTabBarBuilder: ThemeBuilder<ThemeTabBar> {

    init() {
        super.init(element: ThemeTabBar())
    }
    
    func set(barStyle: UIBarStyle) -> Self {
        element.barStyle = barStyle
        return self
    }
    
    func set(tintColor: UIColor) -> Self {
        element.tintColor = tintColor
        return self
    }
    
    func set(barTintColor: UIColor) -> Self {
        element.barTintColor = barTintColor
        return self
    }
    
    func set(unselectedTintColor: UIColor) -> Self {
        element.unselectedTintColor = unselectedTintColor
        return self
    }
    
    func set(backgroundColor: UIColor) -> Self {
        element.backgroundColor = backgroundColor
        return self
    }
}

class ThemeNavigationBarBuilder: ThemeBuilder<ThemeNavigationBar> {

    init() {
        super.init(element: ThemeNavigationBar())
    }
    
    func set(barStyle: UIBarStyle) -> Self {
        element.barStyle = barStyle
        return self
    }
    
    func set(barTintColor: UIColor) -> Self {
        element.barTintColor = barTintColor
        return self
    }
    
    func set(backgroundColor: UIColor) -> Self {
        element.backgroundColor = backgroundColor
        return self
    }
}

class ThemeTableViewBuilder: ThemeBuilder<ThemeTableView> {
    
    init() {
        super.init(element: ThemeTableView())
    }
    
    func set(backgroundColor: UIColor) -> Self {
        element.backgroundColor = backgroundColor
        return self
    }
}

class ThemeLabelBuilder: ThemeBuilder<ThemeLabel> {
    
    init() {
        super.init(element: ThemeLabel())
    }
    
    func set(textColor: UIColor) -> Self {
        element.textColor = textColor
        return self
    }
    
    func set(font: UIFont) -> Self {
        element.font = font
        return self
    }
    
    func set(backgroundColor: UIColor) -> Self {
        element.backgroundColor = backgroundColor
        return self
    }
}

class ThemeTextFieldBuilder: ThemeBuilder<ThemeTextField> {
    
    init() {
        super.init(element: ThemeTextField())
    }
    
    func set(textColor: UIColor) -> Self {
        element.textColor = textColor
        return self
    }
    
    func set(backgroundColor: UIColor) -> Self {
        element.backgroundColor = backgroundColor
        return self
    }
}

class ThemeTextViewBuilder: ThemeBuilder<ThemeTextView> {
    init() {
        super.init(element: ThemeTextView())
    }
    
    func set(backgroundColor: UIColor) -> Self {
        element.backgroundColor = backgroundColor
        return self
    }
    
    func set(textColor: UIColor) -> Self {
        element.textColor = textColor
        return self
    }
}
