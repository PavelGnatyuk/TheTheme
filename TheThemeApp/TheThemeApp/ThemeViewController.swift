//
//  ThemeViewController.swift
//  TheThemeApp
//
//  Created by Pavel Gnatyuk on 02/03/2019.
//  Copyright © 2019 Pavel Gnatyuk. All rights reserved.
//

import UIKit
import TheTheme

class ThemeViewController: UIViewController {
    
    var theme: Themes

    lazy var themeView: ThemeView = {
        let view = ThemeView()
        view.buttonTheme.setTitle(theme.themeName, for: .normal)
        view.buttonTheme.addTarget(self, action: #selector(tapOnButtonTheme(_:)), for: .touchUpInside)
        return view
    }()
    
    init(theme: Theme) {
        self.theme = Themes(theme: theme)
        super.init(nibName: nil, bundle: nil)
    }

    @available(*, unavailable)
    required init?(coder aDecoder: NSCoder) {
        fatalError("Not implemented")
    }

    override func loadView() {
        view = themeView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = theme.theme.main.backgroundColor
    }
}

fileprivate extension ThemeViewController {
    @objc func tapOnButtonTheme(_ sender: AnyObject?) {
        debugPrint("\(#function)")
        theme = theme.toggle()
        debugPrint("Current theme: \(theme.themeName)")
        themeView.buttonTheme.setTitle(theme.themeName, for: .normal)
    }
}

