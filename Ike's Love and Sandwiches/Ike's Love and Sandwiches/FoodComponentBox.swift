//
//  FoodComponentBox.swift
//  Ike's Love and Sandwiches
//
//  Created by Christopher Raleigh on 2016-09-14.
//  Copyright © 2016 Ike's Place. All rights reserved.
//

import UIKit

class FoodComponentBox {
    static func selectableAddOnsToDataSource(selectableAddOns: [SelectableAddOn]) -> UITableViewDataSource? {
        return nil
    }
    
    private(set) var internalTitle: String?
    
    private(set) var internalDetail: String?
    
    private(set) var contents: UITableViewDataSource
    
    init(title: String? = nil, detail: String? = nil, contents: UITableViewDataSource? = nil) {
        self.title = title
        self.detail = detail
        self.contents = contents
    }
}
