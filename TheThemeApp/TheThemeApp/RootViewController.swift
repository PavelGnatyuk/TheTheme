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
    
    var theme = StandardTheme()
    
    lazy var tabBar: UITabBarController = {
        let tabBarController = UITabBarController()
        
        let theme = ThemeViewController()
        let navTheme = UINavigationController(rootViewController: theme)
        navTheme.tabBarItem = UITabBarItem(title: .tabBarItemTheme, image: nil, selectedImage: nil)
        navTheme.navigationBar.prefersLargeTitles = true

        let about = AboutViewController()
        let navAbout = UINavigationController(rootViewController: about)
        navAbout.tabBarItem = UITabBarItem(title: .tabBarItemAbout, image: nil, selectedImage: nil)
        navAbout.navigationBar.prefersLargeTitles = true
        
        tabBarController.setViewControllers([navTheme, navAbout], animated: false)
        return tabBarController
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        add(child: tabBar)
    }

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

