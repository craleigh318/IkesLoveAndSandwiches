//
//  FoodItem.swift
//  Ike's Love and Sandwiches
//
//  Created by Christopher Raleigh on 2016-09-04.
//  Copyright © 2016 Ike's Place. All rights reserved.
//

import Foundation

class FoodItem: PFoodItem {
    var name: String {
        return NSLocalizedString(internalName, comment: "")
    }
    
    private(set) var price: Int
    
    private var internalName: String
    
    init(internalName: String, price: Int = 0) {
        self.internalName = internalName
        self.price = price
    }
}