//
//  AddOnsBox.swift
//  Ike's Love and Sandwiches
//
//  Created by Christopher Raleigh on 2016-09-14.
//  Copyright © 2016 Ike's Place. All rights reserved.
//

class AddOnsBox: FoodComponentBox {
    override var detail: String? {
        return IkesOrder.formatPrice(totalPrice)
    }
    
    var selectedAddOns: [AddOn] {
        var sel = [AddOn]()
        for ao in addOns {
            if ao.selected {
                sel.append(ao.addOn)
            }
        }
        return sel
    }
    
    private(set) var addOns: [SelectableAddOn]
    
    private var totalPrice: Int {
        var total = 0
        for ao in addOns {
            total += ao.addOn.price
        }
        return total
    }
    
    init(internalTitle: String? = nil, addOns: [SelectableAddOn]) {
        self.addOns = addOns
        super.init(internalTitle: internalTitle, contents: nil)
    }
}