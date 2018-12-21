//
//  RestaurantCell.swift
//  LetsEat
//
//  Created by Craig Clayton on 11/25/18.
//  Copyright © 2018 Cocoa Academy. All rights reserved.
//

import UIKit

class RestaurantCell: UICollectionViewCell {
    @IBOutlet weak var lblTitle:UILabel!
    @IBOutlet weak var lblCuisine:UILabel!
    @IBOutlet weak var imgRestaurant:UIImageView!
    
    func roundedCorners() {
        imgRestaurant.layer.cornerRadius = 9
        imgRestaurant.layer.masksToBounds = true
    }
}
