//
//  RootViewController.swift
//  TheThemeApp
//
//  Created by Pavel Gnatyuk on 02/03/2019.
//  Copyright © 2019 Pavel Gnatyuk. All rights reserved.
//

import UIKit
import TheTheme

class RootViewController: UIViewController {
    
    private var theme: Theme = StandardTheme()
    
    lazy var tabBar: UITabBarController = {
        let tabBarController = UITabBarController()
        
        let themeTab = makeThemeTab()
        let aboutTab = makeAboutTab()
        tabBarController.setViewControllers([themeTab, aboutTab], animated: false)
        return tabBarController
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        add(child: tabBar)
    }

}

fileprivate extension RootViewController {
    func makeThemeTab() -> UINavigationController {
        let themeViewController = ThemeViewController(theme: theme)
        let navTheme = UINavigationController(rootViewController: themeViewController)
        navTheme.tabBarItem = UITabBarItem(title: .tabBarItemTheme, image: nil, selectedImage: nil)
        navTheme.navigationBar.prefersLargeTitles = true
        return navTheme
    }
    
    func makeAboutTab() -> UINavigationController {
        let aboutViewController = AboutViewController()
        let navAbout = UINavigationController(rootViewController: aboutViewController)
        navAbout.tabBarItem = UITabBarItem(title: .tabBarItemAbout, image: nil, selectedImage: nil)
        navAbout.navigationBar.prefersLargeTitles = true
        return navAbout
    }
}

fileprivate extension RootViewController {
    func add(child viewController: UIViewController) {
        addChild(viewController)
        view.addSubview(viewController.view)
        viewController.didMove(toParent: self)
    }
}

fileprivate extension String {
    static let tabBarItemTheme = "Theme"
    static let tabBarItemAbout = "About"
}

