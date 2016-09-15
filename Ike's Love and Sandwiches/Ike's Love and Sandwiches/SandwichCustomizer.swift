//
//  SandwichCustomizer.swift
//  Ike's Love and Sandwiches
//
//  Created by Christopher Raleigh on 2016-09-14.
//  Copyright © 2016 Ike's Place. All rights reserved.
//

class SandwichCustomizer {
    private static func submenuToBox(sub: AddOnsSubmenu) -> AddOnsBox {
        let boxTitle = sub.name
        var boxItems = [SelectableAddOn]()
        for ao in sub.getAddOns() {
            let sao = SelectableAddOn(addOn: ao)
            boxItems.append(sao)
        }
        return AddOnsBox(internalTitle: boxTitle, addOns: boxItems)
    }
    
    private(set) var baseSandwich: SandwichBase
    
    private(set) var boxes: [FoodComponentBox] = {
        var bxs = [FoodComponentBox]()
        bxs.append(BreadBox())
        for sub in AddOnsMenu.submenus {
            let newBox = SandwichCustomizer.submenuToBox(sub)
            bxs.append(newBox)
        }
        return bxs
    }()
    
    init(baseSandwich: SandwichBase) {
        self.baseSandwich = baseSandwich
    }
}