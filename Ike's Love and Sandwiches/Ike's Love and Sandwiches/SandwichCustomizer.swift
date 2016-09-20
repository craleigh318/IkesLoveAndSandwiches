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
        let menuAddOns = Array(sub.getAddOns())
        return AddOnsBox(internalTitle: boxTitle, addOns: menuAddOns)
    }
    
    private(set) var sandwich: Sandwich
    
    private(set) var boxes: [FoodComponentBox] = []
    
    init(baseSandwich: SandwichBase) {
        sandwich = Sandwich(base: baseSandwich)
    }
    
    private func initializeBoxes() {
        var bxFs = [FoodComponentBoxFactory]()
        bxFs.append(BreadBox.box)
        for sub in AddOnsMenu.submenus {
            let newBox = SandwichCustomizer.submenuToBox(sub: sub)
            bxFs.append(newBox)
        }
        boxes = [FoodComponentBox]()
        for bf in bxFs {
            let box = bf.makeFoodComponentBox(sandwich: sandwich)
            boxes.append(box)
        }
    }
}
