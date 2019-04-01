//
//  ThemedTextField.swift
//  WhoIsThisKit
//
//  Created by Pavel Gnatyuk on 30/03/2019.
//  Copyright © 2019 Pavel Gnatyuk. All rights reserved.
//

import UIKit

public class ThemedTextField: UITextField, DoneAccessory {
    
    private var _doneAccessory: Bool = true
    public var onDone: () -> (Bool) = { false }

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
    
    public var doneAccessory: Bool {
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
        let toolbar: UIToolbar = toolbarWithDoneButton()
        guard let items = toolbar.items, items.count > 1 else {
            return
        }
        let done = items[1]
        done.action = #selector(tapOnDone(_:))
        inputAccessoryView = toolbar
    }
    
    @objc func tapOnDone(_ sender: AnyObject?) {
        if onDone() {
            return
        }
        self.resignFirstResponder()
    }
}
