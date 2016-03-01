//
//  ItemTextField.swift
//  Homepwner
//
//  Created by Angus Mak on 2016-02-24.
//  Copyright © 2016 Angus Mak. All rights reserved.
//

import UIKit

class ItemTextField: UITextField {
    var originalStyle: UITextBorderStyle!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func becomeFirstResponder() -> Bool {
        originalStyle = self.borderStyle
        borderStyle = .Bezel
        
        return true
    }
    
    override func resignFirstResponder() -> Bool {
        borderStyle = originalStyle
        
        return true
    }
}
