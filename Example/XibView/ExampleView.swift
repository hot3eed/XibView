//
//  ExampleView.swift
//  XibView_Example
//
//  Created by Abd-Elrhman Rizk on 10/12/19.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKit
import XibView

@IBDesignable
class ExampleView: XibView {
    
    @IBOutlet private weak var exampleLabel: UILabel!
    
    @IBInspectable var text: String? {
        willSet {
            exampleLabel.text = newValue
        }
    }
}
