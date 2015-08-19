//
//  ViewController.swift
//  UIkitBugScrollViewSwift
//
//  Created by pronebird on 8/19/15.
//  Copyright © 2015 pronebird. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UIScrollViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        self.tableView.contentInset = UIEdgeInsetsMake(0, 0, 128, 0)
    }
    
    deinit {
        print("tableView.delegate = \(self.tableView.delegate)")
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        
        cell.textLabel?.text = "Scroll down and tap back"
        
        return cell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        print("ScrollViewDidScroll")
    }

}

