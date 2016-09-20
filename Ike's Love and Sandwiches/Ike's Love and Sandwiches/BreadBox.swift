//
//  BreadBox.swift
//  Ike's Love and Sandwiches
//
//  Created by Christopher Raleigh on 2016-09-14.
//  Copyright © 2016 Ike's Place. All rights reserved.
//

class BreadBox: FoodComponentBoxFactory {
    static let box = BreadBox()
    
    private static let thisInternalTitle = "Bread"
    
    private init() {
        super.init(internalTitle: BreadBox.thisInternalTitle, items: BreadMenu.breads)
    }
    
    override func getDetail(sandwich: Sandwich) -> String? {
        return sandwich.bread.name
    }
}
