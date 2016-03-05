//
//  ListViewController.swift
//  ScavengerHunt
//
//  Created by Apple on 3/5/16.
//  Copyright © 2016 Apple. All rights reserved.
//

import UIKit


class ListViewController : UITableViewController {
    
    var itemsList = [ScavengerHuntItem(name: "Cat"), ScavengerHuntItem(name: "Bird"), ScavengerHuntItem(name: "Brick")]
    
    @IBAction func unwindToList(segue: UIStoryboardSegue){
        if segue.identifier == "DoneItem" {
            //addVC = AddViewController
            let addVC = segue.sourceViewController as! AddViewController //
            if let myItem = addVC.myItem {
                itemsList += [myItem]// swift arrays are mutable allowing it to grow dynamically -- if declared as constant, this is not true
                let indexPath = NSIndexPath(forRow: itemsList.count - 1, inSection: 0) 
                tableView.insertRowsAtIndexPaths([indexPath], withRowAnimation: .Automatic)
            }
        }
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemsList.count
    }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        // declared as a constant
        // cell is not changed, but the content in the cell may be changed
        let cell = tableView.dequeueReusableCellWithIdentifier("ListViewCell", forIndexPath: indexPath)
        let item = itemsList[indexPath.row]
        cell.textLabel?.text = item.name
        return cell
    }
    
   }
