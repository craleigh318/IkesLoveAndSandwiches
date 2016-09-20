//
//  PFoodComponentBoxFactory.swift
//  Ike's Love and Sandwiches
//
//  Created by Christopher Raleigh on 2016-09-19.
//  Copyright © 2016 Ike's Place. All rights reserved.
//

protocol PFoodComponentBoxFactory {
    func makeFoodComponentBox(sandwich: Sandwich) -> FoodComponentBox
}
