//
//  FoodItem.swift
//  Ike's Love and Sandwiches
//
//  Created by Christopher Raleigh on 2016-09-04.
//  Copyright © 2016 Ike's Place. All rights reserved.
//

import Foundation

class FoodItem: InternalNameObject, PFoodItem, PReceiptPrintableRow, Hashable {
    var hashValue: Int
    
    private(set) var price: Int
    
    init(internalName: String, price: Int = 0) {
        hashValue = Hashing.getNextHashValue()
        self.price = price
        super.init(internalName: internalName)
    }
    
    func receiptPrintRow() -> IkesOrderRow {
        let formattedPrice = IkesOrder.formatPrice(price)
        return IkesOrderRow(leftCell: name, rightCell: "\(formattedPrice)")
    }
    
    func receiptPrint() -> IkesOrderTable {
        return IkesOrderTable(rows: [receiptPrintRow()])
    }
}

func ==(lhs: FoodItem, rhs: FoodItem) -> Bool {
    return lhs.hashValue == rhs.hashValue
}