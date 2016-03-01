//
//  BlueVC.swift
//  nav-controller
//
//  Created by Angus Mak on 2016-01-21.
//  Copyright © 2016 Angus Mak. All rights reserved.
//

import UIKit

class BlueVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func popToRoot(sender: AnyObject) {
        navigationController?.popToRootViewControllerAnimated(true)
    }


}
