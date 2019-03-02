//
//  ThemeView.swift
//  TheThemeApp
//
//  Created by Pavel Gnatyuk on 02/03/2019.
//  Copyright © 2019 Pavel Gnatyuk. All rights reserved.
//

import UIKit

class ThemeView: UIView {

    lazy var buttonTheme: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    var buttonThemeConstraints: [NSLayoutConstraint] {
        return [buttonTheme.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
                buttonTheme.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor),
                buttonTheme.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor)]
    }
    
    init() {
        super.init(frame: CGRect.zero)
        setup()
    }
    
    @available(*, unavailable)
    required init?(coder aDecoder: NSCoder) {
        fatalError("Not implemented")
    }
    
    func setup() {
        addSubview(buttonTheme)
        NSLayoutConstraint.activate(buttonThemeConstraints)
    }
}
