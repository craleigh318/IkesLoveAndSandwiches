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
        let formatter = NSNumberFormatter()
        formatter.numberStyle = .CurrencyStyle
        formatter.locale = NSLocale(localeIdentifier: "en_US")
        let priceInDollars = Double(price) / 100.0
        return formatter.stringFromNumber(priceInDollars)
    }
    
    var items: [FoodItem] = []
    
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