//
//  DoneAccessory.swift
//  TheTheme
//
//  Created by Pavel Gnatyuk on 01/04/2019.
//  Copyright © 2019 Pavel Gnatyuk. All rights reserved.
//

import UIKit

public protocol DoneAccessory {
    var doneAccessory: Bool { get set }
}

extension DoneAccessory {
    func toolbarWithDoneButton() -> UIToolbar {
        let rect = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: .toolbarHeight)
        let toolbar: UIToolbar = UIToolbar(frame: rect)
        toolbar.barStyle = .default
        
        let flexSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let done = UIBarButtonItem(title: .barItemDone, style: .done, target: self, action: nil)
        
        let items = [flexSpace, done]
        toolbar.items = items
        toolbar.sizeToFit()
        return toolbar
    }
}

fileprivate extension String {
    static let barItemDone: String  = "Done"
}

fileprivate extension CGFloat {
    static let toolbarHeight: CGFloat = 50
}
