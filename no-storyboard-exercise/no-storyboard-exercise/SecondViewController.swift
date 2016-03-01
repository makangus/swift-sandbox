//
//  SecondViewController.swift
//  no-storyboard-exercise
//
//  Created by Angus Mak on 2016-01-20.
//  Copyright © 2016 Angus Mak. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var firstViewController: FirstViewController!
    var thirdViewController: ThirdViewController!
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.firstViewController = FirstViewController(nibName: "FirstViewController", bundle: nil)
        self.thirdViewController = ThirdViewController(nibName: "ThirdViewController", bundle: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func loadFirst(sender: AnyObject) {
        self.presentViewController(firstViewController, animated: true, completion: nil)
    }
    
    @IBAction func loadThird(sender: AnyObject) {
        self.presentViewController(thirdViewController, animated: true, completion: nil)
    }
    
}
