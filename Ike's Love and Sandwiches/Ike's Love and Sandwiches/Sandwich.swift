//
//  Sandwich.swift
//  Ike's Love and Sandwiches
//
//  Created by Christopher Raleigh on 2016-09-04.
//  Copyright © 2016 Ike's Place. All rights reserved.
//

class Sandwich: PFoodItem {
    var name: String {
        return base.name
    }
    
    var price: Int {
        var total = base.price
        for ao in addOns {
            total += ao.price
        }
        return total
    }
    
    private var base: SandwichBase
    
    private var addOns: [AddOn]
    
    init(base: SandwichBase, addOns: [AddOn]) {
        self.base = base
        self.addOns = addOns
    }
    
    convenience init(base: SandwichBase) {
        let defaultAddOns = [AddOn]()
        self.init(base: base, addOns: defaultAddOns)
    }
}