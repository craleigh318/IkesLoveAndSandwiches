//
//  FoodItem.swift
//  Ike's Love and Sandwiches
//
//  Created by Christopher Raleigh on 2016-09-04.
//  Copyright © 2016 Ike's Place. All rights reserved.
//

import Foundation

class FoodItem: InternalNameObject, PFoodItem {
    private(set) var price: Int
    
    init(internalName: String, price: Int = 0) {
        self.price = price
        super.init(internalName: internalName)
    }
    
    func receiptPrint() -> String {
        let formattedPrice = IkesOrder.formatPrice(price)
        return "\(name)\t\(formattedPrice)"
    }
}