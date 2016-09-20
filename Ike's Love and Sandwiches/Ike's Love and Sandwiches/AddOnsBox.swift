//
//  AddOnsBox.swift
//  Ike's Love and Sandwiches
//
//  Created by Christopher Raleigh on 2016-09-14.
//  Copyright © 2016 Ike's Place. All rights reserved.
//

class AddOnsBox: PFoodComponentBoxFactory {
    private var internalTitle: String?
    
    private var addOns: [AddOn]
    
    init(internalTitle: String? = nil, addOns: [AddOn]) {
        self.internalTitle = internalTitle
        self.addOns = addOns
    }
    
    func makeFoodComponentBox(sandwich: Sandwich) -> FoodComponentBox {
        let thisTitle = Localization.localizeOptionalString(internalString: internalTitle)
        let thisDetail = getDetail()
        
        
        let theseSelectables = getSelectableAddOns(thisBread)
        let theseContents = selectableAddOnsToDataSource(selectableAddOns: theseSelectables)
        return FoodComponentBox(title: thisTitle, detail: thisDetail, contents: theseContents)
    }
    
    private func getTotalPrice() -> Int {
        var total = 0
        for ao in addOns {
            total += ao.price
        }
        return total
    }
    
    private func getDetail() -> String? {
        return IkesOrder.formatPrice(getTotalPrice())
    }
    
    private func getSelectableAddOns(thisSandwich: Sandwich) -> [SelectabeAddOn] {
        let sandwichAddOns = thisSandwich.addOns
        var selAddOns = [SelectabeAddOn]()
        for ao in addOns {
            let hasAddOn = sandwichAddOns.contains(ao)
            let sao = SelectabeAddOn(addOn: b, selected: hasAddOn)
            selAddOns.append(sao)
        }
        return selAddOns
    }
    
    
    
    
    
    
    
    var selectedAddOns: [AddOn] {
        var sel = [AddOn]()
        for ao in addOns {
            if ao.selected {
                sel.append(ao.addOn)
            }
        }
        return sel
    }
    
    
    
    
}
