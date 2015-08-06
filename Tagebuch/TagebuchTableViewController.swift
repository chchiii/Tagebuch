//
//  TagebuchTableViewController.swift
//  Tagebuch
//
//  Created by Christopher on 05.08.15.
//  Copyright © 2015 Christopher. All rights reserved.
//

import UIKit
import CoreData

class TagebuchTableViewController: UITableViewController {

    
    var tagebuchEinräge: [Eintrag] = []
    var managedObjectContext: NSManagedObjectContext? = nil
    var selectedRow = 0
    
    
    struct CoreDataConstants {
        static var entityName = "Eintrag"
    }
 
    
// MARK: - ViewController Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(true)
        updateModell()
        tableView.reloadData()
        saveTagebuchArray()
        print(tagebuchEinräge)
    }
 
// MARK: - Data Modell functions
    
    func updateModell() {
        
    }
    
    func updateTagebuchArray() {
        let fetchRequest = NSFetchRequest(entityName: CoreDataConstants.entityName)
            fetchRequest.sortDescriptors = [NSSortDescriptor(key: "title", ascending: false)]
            try! tagebuchEinräge = managedObjectContext?.executeFetchRequest(fetchRequest) as! [Eintrag]
    }
    
    func saveTagebuchArray() {
        let newTagebuchEintrag = NSEntityDescription.insertNewObjectForEntityForName(CoreDataConstants.entityName, inManagedObjectContext: managedObjectContext!) as! Eintrag
        newTagebuchEintrag.name = "Name"
        newTagebuchEintrag.title = "Title"
        tagebuchEinräge.append(newTagebuchEintrag)
        save()
        updateTagebuchArray()
    }
    
    func save() {
        try! managedObjectContext?.save()
    }
    
// MARK: - TableView Setup
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tagebuchEinräge.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        let Text = tagebuchEinräge[indexPath.row]
            cell.textLabel?.text = Text.title
            cell.detailTextLabel?.text = Text.name
        
        return cell
    }
    
   override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        performSegueWithIdentifier("ShowEntry", sender: nil)
        selectedRow = indexPath.row
    }
    
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            //add code here for when you hit delete
        }
    }
    
// MARK: - Segue
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "ShowEntry" {
            if let dvc = segue.destinationViewController as? EintragViewController {
                dvc.titel = tagebuchEinräge[selectedRow].name!
                dvc.name = tagebuchEinräge[selectedRow].title!
            }

            
        } else {
//          CODe
        }
    }
    @IBAction func cancel(sender: UIStoryboardSegue) {
       dismissViewControllerAnimated(true, completion: nil)
    }

}
