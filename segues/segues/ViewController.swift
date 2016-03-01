//
//  ViewController.swift
//  segues
//
//  Created by Angus Mak on 2016-01-19.
//  Copyright © 2016 Angus Mak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func loadBlue(sender: AnyObject!) {
        // Use sender to pass data
        let str = "Hey, we just came from the yellow screen!"
        performSegueWithIdentifier("goToBlue", sender: str)
    }
    @IBAction func loadRed(sender: AnyObject) {
        performSegueWithIdentifier("goToRed", sender: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // This is where you do work right before the view loads
        // keep in mind - the new View controller has already been initialized.
        if segue.identifier == "goToBlue" {
            if let blueVC = segue.destinationViewController as? BlueController {
                if let theString = sender as? String {
                    blueVC.transferText = theString
                }
            }
        }
    }
}

