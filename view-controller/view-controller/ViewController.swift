//
//  ViewController.swift
//  view-controller
//
//  Created by Angus Mak on 2016-01-19.
//  Copyright © 2016 Angus Mak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Only called ONCE when first loaded in memory.
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.greenColor()
    }

    // Called right before views appear on screen.
    // Called every time before the view appears.
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    // Put code that modiies view layout if viewWillAppear doesn't work
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    }
}

