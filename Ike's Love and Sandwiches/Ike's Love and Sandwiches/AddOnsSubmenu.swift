//
//  AddOnsSubmenu.swift
//  Ike's Love and Sandwiches
//
//  Created by Christopher Raleigh on 2016-09-07.
//  Copyright © 2016 Ike's Place. All rights reserved.
//

class AddOnsSubmenu: InternalNameObject {
    private var addOns: [AddOn]
    
    init(internalName: String, addOns: [AddOn]) {
        self.addOns = addOns
        super.init(internalName: internalName)
    }
    
    func getAddOns() -> [AddOn] {
        return [AddOn](addOns)
    }
}