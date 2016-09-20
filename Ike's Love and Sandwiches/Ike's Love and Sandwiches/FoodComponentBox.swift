//
//  FoodComponentBox.swift
//  Ike's Love and Sandwiches
//
//  Created by Christopher Raleigh on 2016-09-14.
//  Copyright © 2016 Ike's Place. All rights reserved.
//

import UIKit

class FoodComponentBox {
    var title: String? {
        return Localization.localizeOptionalString(internalTitle)
    }
    
    var detail: String? {
        return Localization.localizeOptionalString(internalDetail)
    }
    
    private var internalTitle: String?
    
    private var internalDetail: String?
    
    init(internalTitle: String? = nil, internalDetail: String? = nil) {
        self.internalTitle = internalTitle
        self.internalDetail = internalDetail
    }
    
    func getSelectableAddOns(sandwich: Sandwich) -> [SelectabeAddOn] {
        return []
    }
}
