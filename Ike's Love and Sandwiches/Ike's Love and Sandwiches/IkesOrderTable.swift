//
//  IkesOrderTable.swift
//  Ike's Love and Sandwiches
//
//  Created by Christopher Raleigh on 2016-09-09.
//  Copyright © 2016 Ike's Place. All rights reserved.
//

class IkesOrderTable {
    var rows: [IkesOrderRow]
    
    init(rows: [IkesOrderRow] = []) {
        self.rows = rows
    }
}