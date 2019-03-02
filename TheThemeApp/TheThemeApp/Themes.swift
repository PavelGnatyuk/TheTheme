//
//  Themes.swift
//  TheThemeApp
//
//  Created by Pavel Gnatyuk on 02/03/2019.
//  Copyright © 2019 Pavel Gnatyuk. All rights reserved.
//

import TheTheme

enum Themes {
    case standard(theme: Theme)
    case dark(theme: Theme)
    
    init(theme: Theme) {
        switch theme.name {
        case DarkTheme().name:
            self = .standard(theme: theme)
            
        default:
            self = .standard(theme: theme)
        }
    }
    
    var theme: Theme {
        switch self {
        case .standard(let theme):
            return theme
            
        case .dark(let theme):
            return theme
        }
    }
    
    var themeName: String {
        switch self {
        case .standard(let theme):
            return theme.name
            
        case .dark(let theme):
            return theme.name
        }
    }
    
    func toggle() -> Themes {
        switch self {
        case .standard( _):
            let next = DarkTheme()
            next.apply(for: UIApplication.shared)
            return .dark(theme: next)
            
        case .dark( _):
            let next = StandardTheme()
            next.apply(for: UIApplication.shared)
            return .standard(theme: next)
        }
    }
}
