//
//  FoodComponentBoxFactory.swift
//  Ike's Love and Sandwiches
//
//  Created by Christopher Raleigh on 2016-09-19.
//  Copyright © 2016 Ike's Place. All rights reserved.
//

class FoodComponentBoxFactory: PFoodComponentBoxFactory {
    private var internalTitle: String?
    
    init(internalTitle: String?) {
        self.internalTitle = internalTitle
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
        return []
    }
}
