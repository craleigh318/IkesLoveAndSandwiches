//
//  IkesOrderRow.swift
//  Ike's Love and Sandwiches
//
//  Created by Christopher Raleigh on 2016-09-09.
//  Copyright © 2016 Ike's Place. All rights reserved.
//

class IkesOrderRow {
    var leftCell: String
    
    var rightCell: String
    
    var bottomCell: String?
    
    init(leftCell: String = "", rightCell: String = "", bottomCell: String? = nil) {
        self.leftCell = leftCell
        self.rightCell = rightCell
        self.bottomCell = bottomCell
    }
}