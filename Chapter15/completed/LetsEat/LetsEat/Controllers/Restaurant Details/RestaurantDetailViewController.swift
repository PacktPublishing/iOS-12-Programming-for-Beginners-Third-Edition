//
//  RestaurantDetailViewController.swift
//  LetsEat
//
//  Created by Craig Clayton on 11/21/18.
//  Copyright © 2018 Cocoa Academy. All rights reserved.
//

import UIKit

class RestaurantDetailViewController: UITableViewController {

    var selectedRestaurant:RestaurantItem?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dump(selectedRestaurant as Any)
    }
}
