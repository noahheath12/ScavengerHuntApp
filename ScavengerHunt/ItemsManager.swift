//
//  ItemsManager.swift
//  ScavengerHunt
//
//  Created by Apple on 3/5/16.
//  Copyright © 2016 Apple. All rights reserved.
//

import Foundation

class ItemsManager {
    var itemsList = [ScavengerHuntItem]()
    
    func archivePath() -> String? {
        let directoryList = NSSearchPathForDirectoriesInDomains(.DocumentationDirectory, .UserDomainMask, true)
        if let documentsPath = directoryList.first {
            return documentsPath + "/ScavengerHuntItems"
        }
        assertionFailure("Could not determine where to save file.")
        return nil
    }
    
    func save(){
        if let theArchivePath = archivePath() {
            if NSKeyedArchiver.archiveRootObject(itemsList, toFile: theArchivePath){
                print("Saved successfully")
            } else {
                assertionFailure("Could not save data to \(theArchivePath)")
            }
        }
    }
    
    init(){
        if let theArchivePath = archivePath(){
            if NSFileManager.defaultManager().fileExistsAtPath(theArchivePath){
                itemsList = NSKeyedUnarchiver.unarchiveObjectWithFile(theArchivePath) as! [ScavengerHuntItem]
            }
        }
    }
}
