//
//  BreadBox.swift
//  Ike's Love and Sandwiches
//
//  Created by Christopher Raleigh on 2016-09-14.
//  Copyright © 2016 Ike's Place. All rights reserved.
//

class BreadBox: PFoodComponentBoxFactory {
    static let box = BreadBox()
    
    private static let thisInternalTitle = "Bread"
    
    func makeFoodComponentBox(sandwich: Sandwich) -> FoodComponentBox {
        let thisTitle = Localization.localizeString(internalString: BreadBox.thisInternalTitle)
        let thisBread = sandwich.bread
        let thisBreadName = thisBread.name
        let theseSelectables = getSelectableAddOns(thisBread)
        let theseContents = selectableAddOnsToDataSource(selectableAddOns: theseSelectables)
        return FoodComponentBox(title: thisTitle, detail: thisBreadName, contents: nil)
    }
    
    private func getSelectableAddOns(thisBread: Bread) -> [SelectabeAddOn] {
        var selAddOns = [SelectabeAddOn]()
        let breadMenu = BreadMenu.breads
        for b in breadMenu {
            let hasBread = (b == thisBread)
            let sao = SelectabeAddOn(addOn: b, selected: hasBread)
            selAddOns.append(sao)
        }
        return selAddOns
    }
}
