//
//  ThemedTextField.swift
//  WhoIsThisKit
//
//  Created by Pavel Gnatyuk on 30/03/2019.
//  Copyright © 2019 Pavel Gnatyuk. All rights reserved.
//

import UIKit

public class ThemedTextField: UITextField {
    
    private var _doneAccessory: Bool = true

    public init() {
        super.init(frame: CGRect.zero)
        self.textColor = UITextField.appearance().textColor
        self.backgroundColor = UITextField.appearance().backgroundColor
        self.font = .preferredFont(forTextStyle: .body)
        self.adjustsFontForContentSizeCategory = true
        self.borderStyle = .roundedRect
        self.translatesAutoresizingMaskIntoConstraints = false
        addDoneButtonOnKeyboard()
    }
    
    @available(*, unavailable)
    required init?(coder aDecoder: NSCoder) {
        fatalError("Not implemented")
    }
    
    var doneAccessory: Bool {
        get {
            return _doneAccessory
        }
        set (done) {
            _doneAccessory = done
            if done {
                addDoneButtonOnKeyboard()
            }
        }
    }
}

fileprivate extension ThemedTextField {
    func addDoneButtonOnKeyboard() {
        let toolbar: UIToolbar = UIToolbar(frame: CGRect.init(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 50))
        toolbar.barStyle = .default
        
        let flexSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let done: UIBarButtonItem = UIBarButtonItem(title: .barItemDone, style: .done, target: self, action: #selector(resignFirstResponder))
        
        let items = [flexSpace, done]
        toolbar.items = items
        toolbar.sizeToFit()
        
        inputAccessoryView = toolbar
    }
}

fileprivate extension String {
    static let barItemDone: String  = "Done"
}
