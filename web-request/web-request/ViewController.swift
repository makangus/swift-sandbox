//
//  ViewController.swift
//  web-request
//
//  Created by Angus Mak on 2016-01-20.
//  Copyright © 2016 Angus Mak. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var container: UIView!
    
    var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        webView = WKWebView()
        container.addSubview(webView)
    }

    override func viewDidAppear(animated: Bool) {
        let frame = CGRectMake(0, 0, container.bounds.width, container.bounds.height)
        webView.frame = frame
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loadRequest(urlString: String) {
        let url = NSURL(string: urlString)!
        let request = NSURLRequest(URL: url)
        
        webView.loadRequest(request)

    }

    @IBAction func loadSwift(sender: AnyObject) {
        loadRequest("https://developer.apple.com/swift/blog/")
    }
    
    
    @IBAction func loadGossip(sender: AnyObject) {
        loadRequest("http://www.celebrity-gossip.net/")
    }
    
    @IBAction func loadSteak(sender: AnyObject) {
        loadRequest("http://www.primecutbags.com/blog/")
    }
}

