//
//  ThemedTextField.swift
//  WhoIsThisKit
//
//  Created by Pavel Gnatyuk on 30/03/2019.
//  Copyright © 2019 Pavel Gnatyuk. All rights reserved.
//

import UIKit

public class ThemedTextField: UITextField {

    public init() {
        super.init(frame: CGRect.zero)
        self.textColor = UITextField.appearance().textColor
        self.backgroundColor = UITextField.appearance().backgroundColor
        self.font = .preferredFont(forTextStyle: .body)
        self.adjustsFontForContentSizeCategory = true
        self.borderStyle = .roundedRect
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    @available(*, unavailable)
    required init?(coder aDecoder: NSCoder) {
        fatalError("Not implemented")
    }
}
