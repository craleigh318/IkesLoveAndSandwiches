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
    
    private var bread: Bread
    
    private var addOns: [AddOn]
    
    init(base: SandwichBase, bread: Bread, addOns: [AddOn]) {
        self.base = base
        self.bread = bread
        self.addOns = addOns
    }
    
    convenience init(base: SandwichBase) {
        let toppings = AddOnsMenu.defaultAddOns.getAddOns()
        self.init(base: base, bread: BreadMenu.defaultBread, addOns: toppings)
    }
    
    func receiptPrint() -> String {
        let basePrint = base.receiptPrint()
        var print = "\(basePrint)\n"
        for ao in addOns {
            let addOnPrint = ao.receiptPrint()
            print += "— \(addOnPrint)\n"
        }
        return print
    }
}