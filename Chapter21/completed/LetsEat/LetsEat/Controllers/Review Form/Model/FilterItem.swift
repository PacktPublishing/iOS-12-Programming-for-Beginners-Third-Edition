//
//  FilterItem.swift
//  LetsEat
//
//  Created by Craig Clayton on 11/25/18.
//  Copyright © 2018 Cocoa Academy. All rights reserved.
//

import UIKit

class FilterItem: NSObject {
    let filter:String
    let name:String
    
    init(dict:[String:AnyObject]) {
        name  = dict["name"] as! String
        filter = dict["filter"] as! String
    }
}
