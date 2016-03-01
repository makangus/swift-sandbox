//
//  ViewController.swift
//  favourite-place
//
//  Created by Angus Mak on 2016-01-20.
//  Copyright © 2016 Angus Mak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var moreButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        moreButton.layer.cornerRadius = 2.0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

