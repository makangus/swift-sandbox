//
//  ViewController.swift
//  private-properties
//
//  Created by Angus Mak on 2016-01-18.
//  Copyright © 2016 Angus Mak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var bmw = Vehicle()
        
        print(bmw.odometer)
        bmw.odometer = 700
        print(bmw.odometer)
        
    }


}

