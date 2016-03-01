//
//  RoundedImageView.swift
//  mvc-test
//
//  Created by Angus Mak on 2016-01-19.
//  Copyright © 2016 Angus Mak. All rights reserved.
//

import UIKit

class RoundedImageView: UIImageView {

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    
    override func awakeFromNib() {
        self.layer.cornerRadius = 5.0
        self.clipsToBounds = true
    }

}
