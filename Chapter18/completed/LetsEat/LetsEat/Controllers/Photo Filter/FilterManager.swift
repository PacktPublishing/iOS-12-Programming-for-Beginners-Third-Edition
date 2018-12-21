//
//  FilterManager.swift
//  LetsEat
//
//  Created by Craig Clayton on 11/25/18.
//  Copyright © 2018 Cocoa Academy. All rights reserved.
//

import Foundation

class FilterManager: DataManager {
    func fetch(completionHandler:(_ items:[FilterItem]) -> Swift.Void) {
        var items:[FilterItem] = []
        for data in load(file: "FilterData") {
            items.append(FilterItem(dict: data))
        }
        completionHandler(items)
    }
}
