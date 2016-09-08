//
//  InternalNameObject.swift
//  Ike's Love and Sandwiches
//
//  Created by Christopher Raleigh on 2016-09-07.
//  Copyright © 2016 Ike's Place. All rights reserved.
//

import Foundation

class InternalNameObject {
    var name: String {
        return NSLocalizedString(internalName, comment: "")
    }
    
    private var internalName: String
    
    init(internalName: String) {
        self.internalName = internalName
    }
}