//
//  ViewController.swift
//  defaults
//
//  Created by Angus Mak on 2016-01-21.
//  Copyright © 2016 Angus Mak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var favouriteLabel: UILabel!
    
    var people = [Person]()

    override func viewDidLoad() {
        super.viewDidLoad()

        if let color = NSUserDefaults.standardUserDefaults().valueForKey("color") as? String {
            favouriteLabel.text = "Favourite Color: \(color)"
        } else {
            favouriteLabel.text = "Pick a color!"
        }
        
        let personA = Person(first: "Wing", last: "Chun")
        let personB = Person(first: "Lady", last: "Gaga")
        let personC = Person(first: "Justin", last: "Bibier")
        
        people.append(personA)
        people.append(personB)
        people.append(personC)
        
        let peopleData = NSKeyedArchiver.archivedDataWithRootObject(people)
        
        NSUserDefaults.standardUserDefaults().setObject(peopleData, forKey: "people")
        NSUserDefaults.standardUserDefaults().synchronize()
    }


    @IBAction func red(sender: AnyObject) {
        favouriteLabel.text = "Favourite Color: Red"
        NSUserDefaults.standardUserDefaults().setValue("Red", forKey: "color")
        NSUserDefaults.standardUserDefaults().synchronize()
    }
    @IBAction func yellow(sender: AnyObject) {
        favouriteLabel.text = "Favourite Color: Yellow"
        NSUserDefaults.standardUserDefaults().setValue("Yellow", forKey: "color")
        NSUserDefaults.standardUserDefaults().synchronize()
    }
    @IBAction func blue(sender: AnyObject) {
        favouriteLabel.text = "Favourite Color: Blue"
        NSUserDefaults.standardUserDefaults().setValue("Red", forKey: "color")
        NSUserDefaults.standardUserDefaults().synchronize()
        
        if let loadedPeople = NSUserDefaults.standardUserDefaults().objectForKey("people") as? NSData {
            if let peopleArray = NSKeyedUnarchiver.unarchiveObjectWithData(loadedPeople) as? [Person] {
                for person in peopleArray {
                    print(person.firstName)
                }
            }
        }
    }
}

