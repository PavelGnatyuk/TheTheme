//
//  ThemedTextView.swift
//  WhoIsThisKit
//
//  Created by Pavel Gnatyuk on 30/03/2019.
//  Copyright © 2019 Pavel Gnatyuk. All rights reserved.
//

import UIKit

public class ThemedTextView: UITextView {

    public init() {
        super.init(frame: CGRect.zero, textContainer: nil)
        self.textColor = UILabel.appearance().textColor
        self.font = .preferredFont(forTextStyle: .body)
        self.adjustsFontForContentSizeCategory = true
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    @available(*, unavailable)
    required init?(coder aDecoder: NSCoder) {
        fatalError("Not implemented")
    }

}
