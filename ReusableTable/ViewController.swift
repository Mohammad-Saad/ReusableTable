//
//  ViewController.swift
//  ReusableTable
//
//  Created by Hassaan Masood on 4/14/15.
//  Copyright (c) 2015 Szabist. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    
    let something = [("List of animated television series of the 1940s and 1950s"),
        ("List of animated television series of the 1960s"),
        ("List of animated television series of the 1970s"),
        ("List of animated television series of the 1980s"),
        ("List of animated television series of the 1990s")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func tableView(tableView: UITableView, sectionForSectionIndexTitle title: String, atIndex index: Int) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return something.count
    }
    
    func tableView(tableView: UITableView,cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        var cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as UITableViewCell
        
        let list = something[indexPath.row]
        
        cell.textLabel?.text = list
        
        return cell
        
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

