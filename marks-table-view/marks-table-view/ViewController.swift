//
//  ViewController.swift
//  marks-table-view
//
//  Created by Angus Mak on 2016-01-20.
//  Copyright © 2016 Angus Mak. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var uglyThings = [
        "http://i.telegraph.co.uk/multimedia/archive/01650/ugly-dog460_1650068c.jpg",
        "http://i2.cdn.turner.com/cnnnext/dam/assets/130621132819-06-ugly-dog-contest-story-top.jpg",
        "http://www.funnypica.com/wp-content/uploads/2012/07/Scary-and-Ugly-Dog-Mastiff.jpg",
        "http://i.dailymail.co.uk/i/pix/2010/12/16/article-1339113-0C81AC84000005DC-395_634x908.jpg"
    ]
    
    var uglyTitles = [
        "Man this is ugly",
        "This one isn't so bad",
        "I wouldn't want to look like this",
        "No thanks!"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCellWithIdentifier("UglyCell") as? UglyCell {
            
            var img: UIImage!
            
            let url = NSURL(string: uglyThings[indexPath.row])!
            if let data = NSData(contentsOfURL: url) {
                img = UIImage(data: data)
            } else {
                img = UIImage(named: "dog")
            }
            
            cell.configureCell(img, text: uglyTitles[indexPath.row])
            return cell
        }
        
        return UglyCell()
    }
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return uglyThings.count
    }
}

