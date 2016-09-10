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
    
    init(leftCell: String = "", rightCell: String = "") {
        self.leftCell = leftCell
        self.rightCell = rightCell
    }
}