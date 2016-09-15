//
//  SelectableAddOn.swift
//  Ike's Love and Sandwiches
//
//  Created by Christopher Raleigh on 2016-09-14.
//  Copyright © 2016 Ike's Place. All rights reserved.
//

class SelectableAddOn {
    var selected: Bool
    
    private(set) var addOn: AddOn
    
    init(addOn: AddOn, selected: Bool = false) {
        self.addOn = addOn
        self.selected = selected
    }
}