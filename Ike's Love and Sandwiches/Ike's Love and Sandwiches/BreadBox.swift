//
//  BreadBox.swift
//  Ike's Love and Sandwiches
//
//  Created by Christopher Raleigh on 2016-09-14.
//  Copyright © 2016 Ike's Place. All rights reserved.
//

class BreadBox: FoodComponentBox {
    override var detail: String? {
        var d: String?
        if let sb = selectedBread {
            d = sb.name
        } else {
            d = nil
        }
        return d
    }
    
    var selectedBread: Bread? = BreadMenu.defaultBread
    
    private(set) var breads: [Bread] = BreadMenu.breads
    
    private let thisInternalTitle = "Bread"
    
    init() {
        super.init(internalTitle: thisInternalTitle)
    }
    
    override func getSelectableAddOns(sandwich: Sandwich) -> [SelectabeAddOn] {
        var selAddOns = super.getSelectableAddOns(sandwich)
        let breadMenu = BreadMenu.breads
        let thisBread = sa
        for b in breadMenu {
            if b = sandwich. {
                <#code#>
            }
        }
        return []
    }
    
    
    private static func submenuToBox(sub: AddOnsSubmenu) -> AddOnsBox {
        let boxTitle = sub.name
        var boxItems = [SelectableAddOn]()
        for ao in sub.getAddOns() {
            let sao = SelectableAddOn(addOn: ao)
            boxItems.append(sao)
        }
        return AddOnsBox(internalTitle: boxTitle, addOns: boxItems)
    }
}
