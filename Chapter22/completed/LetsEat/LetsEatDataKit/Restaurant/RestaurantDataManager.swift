//
//  RestaurantDataManager.swift
//  LetsEat
//
//  Created by Craig Clayton on 11/25/18.
//  Copyright © 2018 Cocoa Academy. All rights reserved.
//

import Foundation

public class RestaurantDataManager {
    
    public init() {}
    
    private var items:[RestaurantItem] = []
    
    public func fetch(by location:String, with filter:String="All", completionHandler:(_ items:[RestaurantItem]) -> Void) {
        if let file = Bundle.main.url(forResource: location, withExtension: "json") {
            do {
                let data = try Data(contentsOf: file)
                let restaurants = try JSONDecoder().decode([RestaurantItem].self, from: data)
                if filter != "All" {
                    items = restaurants.filter({ ($0.cuisines.contains(filter)) })
                }
                else { items = restaurants }
            }
            catch {
                print("there was an error \(error)")
            }
        }
        
        completionHandler(items)
    }
    
    public func numberOfItems() -> Int {
        return items.count
    }
    
    public func restaurantItem(at index:IndexPath) -> RestaurantItem {
        return items[index.item]
    }
}





