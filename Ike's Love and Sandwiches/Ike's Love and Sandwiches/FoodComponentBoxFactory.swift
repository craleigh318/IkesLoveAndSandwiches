//
//  FoodComponentBoxFactory.swift
//  Ike's Love and Sandwiches
//
//  Created by Christopher Raleigh on 2016-09-19.
//  Copyright © 2016 Ike's Place. All rights reserved.
//

class FoodComponentBoxFactory: PFoodComponentBoxFactory {
    private var internalTitle: String?
    
    private var items: [PFoodItem]
    
    init(internalTitle: String? = nil, items: [PFoodItem]) {
        self.internalTitle = internalTitle
        self.items = items
    }
    
    func makeFoodComponentBox(sandwich: Sandwich) -> FoodComponentBox {
        let thisTitle = Localization.localizeOptionalString(internalString: internalTitle)
        let thisDetail = getDetail(sandwich: sandwich)
        let theseSelectables = getSelectableFoodItems(sandwich: sandwich)
        let theseContents =
            FoodComponentBox.selectableFoodItemsToDataSource(selectableAddOns: theseSelectables)
        return FoodComponentBox(title: thisTitle, detail: thisDetail, contents: theseContents)
    }
    
    func getDetail(sandwich: Sandwich) -> String? {
        return nil
    }
    
    func getSelectableFoodItems(sandwich: Sandwich) -> [SelectableFoodItem] {
        var selFoodItems = [SelectableFoodItem]()
        for itm in items {
            let hasItem = sandwich.contains(subItem: itm)
            let si = SelectableFoodItem(foodItem: itm, selected: hasItem)
            selFoodItems.append(si)
        }
        return selFoodItems
    }
}
