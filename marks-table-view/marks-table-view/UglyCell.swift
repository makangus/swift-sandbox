//
//  UglyCell.swift
//  marks-table-view
//
//  Created by Angus Mak on 2016-01-20.
//  Copyright © 2016 Angus Mak. All rights reserved.
//

import UIKit

class UglyCell: UITableViewCell {

    @IBOutlet weak var mainImg: UIImageView!
    @IBOutlet weak var mainLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()

        mainImg.layer.cornerRadius = 5.0
        mainImg.clipsToBounds = true
    }

    func configureCell(image: UIImage, text: String) {
        self.mainImg.image = image
        self.mainLbl.text = text
    }

}
