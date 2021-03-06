//
//  IkesOrder.swift
//  Ike's Love and Sandwiches
//
//  Created by Christopher Raleigh on 2016-09-08.
//  Copyright © 2016 Ike's Place. All rights reserved.
//

import Foundation

class IkesOrder: PReceiptPrintable {
    static func formatPrice(price: Int) -> String? {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = Locale(identifier: "en_US")
        let priceInDollars = Double(price) / 100.0
        return formatter.string(from: NSNumber(value: priceInDollars))
    }
    
    var items: [PFoodItem] = []
    
    init() {
    }
    
    func receiptPrint() -> IkesOrderTable {
        let table = IkesOrderTable()
        for itm in items {
            table.rows += itm.receiptPrint().rows
        }
        return table
    }
}
