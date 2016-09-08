//
//  AddOnsSubmenu.swift
//  Ike's Love and Sandwiches
//
//  Created by Christopher Raleigh on 2016-09-07.
//  Copyright © 2016 Ike's Place. All rights reserved.
//

class AddOnsSubmenu: InternalNameObject {
    private(set) var addOns: [AddOn]
    
    init(internalName: String, addOns: [AddOn]) {
        self.addOns = addOns
        super.init(internalName: internalName)
    }
    
    var addOnCount: Int {
        return addOns.count
    }
    
    func getAddOn(index: Int) -> AddOn {
        return addOns[index]
    }
}