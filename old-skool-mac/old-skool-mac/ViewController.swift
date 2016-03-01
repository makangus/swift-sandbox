//
//  ViewController.swift
//  old-skool-mac
//
//  Created by Angus Mak on 2016-01-17.
//  Copyright © 2016 Angus Mak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var mainLbl: UILabel!
    
    var phrases = ["Booting from floppy...\n", "Reading from disk...\n", "Updating Registry...\n", "...........\n", "...............\n", "Welcome, Jessica. \n It is nice to see you again"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        mainLbl.text = ""
        for phrase in phrases {
            var txt = mainLbl.text!
            txt += phrase
            mainLbl.text = txt
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

