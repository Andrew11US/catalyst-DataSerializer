//
//  Checkbox.swift
//  DataSerializer
//
//  Created by Andrew on 10/25/20.
//

import UIKit

@IBDesignable
class Checkbox: UIButton {
    var isChecked: Bool = false {
        didSet {
            if isChecked == true {
                self.layer.backgroundColor = UIColor.green.cgColor
            } else {
                self.layer.backgroundColor = UIColor.clear.cgColor
            }
        }
    }
    
    override func awakeFromNib() {
        self.addTarget(self, action:#selector(buttonClicked(sender:)), for: UIControl.Event.touchUpInside)
        self.isChecked = false
    }
    
    @objc func buttonClicked(sender: UIButton) {
        if sender == self {
            isChecked = !isChecked
        }
    }

}
