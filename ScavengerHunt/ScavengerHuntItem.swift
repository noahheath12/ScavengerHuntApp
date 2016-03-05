//
//  RowItem.swift
//  ScavengerHunt
//
//  Created by Apple on 3/5/16.
//  Copyright © 2016 Apple. All rights reserved.
//

import UIKit

class ScavengerHuntItem: NSObject {
    
    let name: String
    var photo: UIImage?
    
    var completed: Bool {
        get {
            return photo != nil
        }
    }
    
    init(name: String){
        self.name = name
    }
    
}
