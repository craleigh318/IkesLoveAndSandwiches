//
//  SandwichBase.swift
//  Ike's Love and Sandwiches
//
//  Created by Christopher Raleigh on 2016-09-04.
//  Copyright © 2016 Ike's Place. All rights reserved.
//

class SandwichBase: FoodItem {
    var description: String? {
        var des: String?
        if let inDes = internalDescription {
            des = Localization.localizeString(inDes)
        }
        return des
    }
    
    private var number: String?
    
    private var internalDescription: String?
    
    init(number: String?, internalName: String, price: Int, internalDescription: String?) {
        self.number = number
        self.internalDescription = internalDescription
        super.init(internalName: internalName, price: price)
    }
    
    override func receiptPrintRow() -> IkesOrderRow {
        let print = super.receiptPrintRow()
        if let unwrappedNumber = number {
            print.leftCell = "\(unwrappedNumber). \(print.leftCell)"
        }
        print.bottomCell = description
        return print
    }
}
