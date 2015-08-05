//
//  TagebuchTableViewController.swift
//  Tagebuch
//
//  Created by Christopher on 05.08.15.
//  Copyright © 2015 Christopher. All rights reserved.
//

import UIKit

class TagebuchTableViewController: UITableViewController {

    
    var TagebuchEintäge: [Eintrag] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let neuerEintrag = Eintrag(überschrift: "Test", text: "Test", datum: "22.7.2015")
        TagebuchEintäge.append(neuerEintrag)
        
    }


    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return TagebuchEintäge.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        
        print("lol")

        let Text = TagebuchEintäge[indexPath.row]
        cell.textLabel?.text = Text.text
        
        
        
        return cell
    }

    override func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
        print("tab")
        performSegueWithIdentifier("Show Entry", sender: nil)

    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "Show Entry" {
//            var dvc =
            
        } else {
            
        }
    }
    
}
