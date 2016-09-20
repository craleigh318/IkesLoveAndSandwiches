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
        super.init(internalTitle: BreadBox.thisInternalTitle)
    }
    
    override func getDetail(sandwich: Sandwich) -> String? {
        return sandwich.bread.name
    }
    
    override func getSelectableFoodItems(sandwich: Sandwich) -> [SelectableFoodItem] {
        var selFoodItems = super.getSelectableFoodItems(sandwich: sandwich)
        let thisBread = sandwich.bread
        let breadMenu = BreadMenu.breads
        for b in breadMenu {
            let hasBread = (b == thisBread)
            let sao = SelectableFoodItem(foodItem: b, selected: hasBread)
            selFoodItems.append(sao)
        }
        return selFoodItems
    }
}
