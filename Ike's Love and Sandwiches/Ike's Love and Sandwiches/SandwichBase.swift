//
//  SandwichBase.swift
//  Ike's Love and Sandwiches
//
//  Created by Christopher Raleigh on 2016-09-04.
//  Copyright © 2016 Ike's Place. All rights reserved.
//

class SandwichBase: FoodItem {
    private var number: String
    
    init(number: String, internalName: String, price: Int) {
        self.number = number
        super.init(internalName: internalName, price: price)
    }
}