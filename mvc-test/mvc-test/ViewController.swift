//
//  ViewController.swift
//  mvc-test
//
//  Created by Angus Mak on 2016-01-19.
//  Copyright © 2016 Angus Mak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fullName: UILabel!

    @IBOutlet weak var renameField: UITextField!
    
    let person = Person(first: "John", last: "Hancock")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fullName.text = person.fullName
    }

    @IBAction func renameButtonPressed(sender: AnyObject) {
        if let txt = renameField.text {
            person.firstName = txt
            fullName.text = person.fullName
        }
    }

}

