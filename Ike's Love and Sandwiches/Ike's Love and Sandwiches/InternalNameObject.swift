//
//  InternalNameObject.swift
//  Ike's Love and Sandwiches
//
//  Created by Christopher Raleigh on 2016-09-07.
//  Copyright © 2016 Ike's Place. All rights reserved.
//

class InternalNameObject {
    var name: String {
        return Localization.localizeString(internalName)
    }
    
    private var internalName: String
    
    init(internalName: String) {
        self.internalName = internalName
    }
}
