//
//  ViewController.swift
//  emums
//
//  Created by Angus Mak on 2016-01-20.
//  Copyright © 2016 Angus Mak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var theLabel: UILabel!
    
    enum Cars: Int {
        case BMW = 0
        case HONDA = 1
        case TESLA = 2
        case SUBARU = 3
    }
    
    var carOfChoice: Cars!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onButtonTapped(sender: AnyObject) {
        if sender.tag == Cars.BMW.rawValue {
                theLabel.text = "BMW is awesome!"
        } else if sender.tag == Cars.HONDA.rawValue {
                theLabel.text = "Somebody get that ugly fin out of my face!"
        } else if sender.tag == Cars.TESLA.rawValue {
                theLabel.text = "The new cool kid on the block!"
        } else {
                theLabel.text = "Somebody shoot me now!"
        }
    }

}

