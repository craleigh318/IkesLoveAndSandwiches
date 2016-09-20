//
//  SelectableFoodItem.swift
//  Ike's Love and Sandwiches
//
//  Created by Christopher Raleigh on 2016-09-19.
//  Copyright © 2016 Ike's Place. All rights reserved.
//

class SelectableFoodItem {
    var selected: Bool
    
    private(set) var foodItem: PFoodItem
    
    init(foodItem: PFoodItem, selected: Bool = false) {
        self.foodItem = foodItem
        self.selected = selected
    }
}
