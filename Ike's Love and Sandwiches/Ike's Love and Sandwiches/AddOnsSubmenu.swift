//
//  AddOnsSubmenu.swift
//  Ike's Love and Sandwiches
//
//  Created by Christopher Raleigh on 2016-09-07.
//  Copyright © 2016 Ike's Place. All rights reserved.
//

class AddOnsSubmenu: InternalNameObject {
    private var addOns: Set<AddOn>
    
    init(internalName: String, addOns: Set<AddOn>) {
        self.addOns = addOns
        super.init(internalName: internalName)
    }
    
    func getAddOns() -> Set<AddOn> {
        return Set<AddOn>(addOns)
    }
}