//
//  SelectableAddOn.swift
//  Ike's Love and Sandwiches
//
//  Created by Christopher Raleigh on 2016-09-14.
//  Copyright © 2016 Ike's Place. All rights reserved.
//

class SelectableAddOn: SelectableFoodItem {
    private(set) var addOn: AddOn
    
    init(addOn: AddOn, selected: Bool = false) {
        self.addOn = addOn
        super.init(foodItem: addOn, selected: selected)
    }
}
