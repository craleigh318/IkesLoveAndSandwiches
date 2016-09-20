//
//  AddOnsBox.swift
//  Ike's Love and Sandwiches
//
//  Created by Christopher Raleigh on 2016-09-14.
//  Copyright © 2016 Ike's Place. All rights reserved.
//

class AddOnsBox: FoodComponentBoxFactory {
    private var addOns: [AddOn]
    
    init(internalTitle: String? = nil, addOns: [AddOn]) {
        self.addOns = addOns
        super.init(internalTitle: internalTitle)
    }
    
    override func getDetail(sandwich: Sandwich) -> String? {
        return sandwich.bread.name
    }
    
    override func getSelectableFoodItems(sandwich: Sandwich) -> [SelectableFoodItem] {
        var selFoodItems = super.getSelectableFoodItems(sandwich: sandwich)
        let sandwichAddOns = sandwich.addOns
        for ao in addOns {
            let hasAddOn = sandwichAddOns.contains(ao)
            let sao = SelectableFoodItem(foodItem: ao, selected: hasAddOn)
            selFoodItems.append(sao)
        }
        return selFoodItems
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
