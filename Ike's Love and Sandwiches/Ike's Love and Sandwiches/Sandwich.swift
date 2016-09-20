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
    
    private(set) var base: SandwichBase
    
    private(set) var bread: Bread
    
    private(set) var addOns: Set<AddOn>
    
    private init(base: SandwichBase, bread: Bread = BreadMenu.defaultBread,
                 addOns: Set<AddOn> = AddOnsMenu.defaultAddOns.getAddOns()) {
        self.base = base
        self.bread = bread
        self.addOns = addOns
    }
    
    func receiptPrint() -> IkesOrderTable {
        let print = base.receiptPrint()
        for ao in addOns {
            let addOnPrint = ao.receiptPrintRow()
            addOnPrint.leftCell = "— \(addOnPrint.leftCell)"
            print.rows.append(addOnPrint)
        }
        return print
    }
}
