//
//  AddOnsBox.swift
//  Ike's Love and Sandwiches
//
//  Created by Christopher Raleigh on 2016-09-14.
//  Copyright © 2016 Ike's Place. All rights reserved.
//

class AddOnsBox: FoodComponentBoxFactory {
    init(internalTitle: String? = nil, addOns: [AddOn]) {
        super.init(internalTitle: internalTitle, items: addOns)
    }
    
    override func getDetail(sandwich: Sandwich) -> String? {
        return sandwich.bread.name
    }
    
    private func getTotalPrice(sandwich: Sandwich) -> Int {
        var total = 0
        let theseAddOns = sandwich.addOns
        for ao in theseAddOns {
            total += ao.price
        }
        return total
    }
}
