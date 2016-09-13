//
//  IkesTableSection.swift
//  Ike's Love and Sandwiches
//
//  Created by Christopher Raleigh on 2016-09-12.
//  Copyright © 2016 Ike's Place. All rights reserved.
//

import UIKit

class IkesTableSection: InternalNameObject {
    private(set)
    private var rows: [UITableViewCell]
    
    init (internalName: String, rows: [UITableViewCell]) {
        self.rows = rows
        super.init(internalName: internalName)
    }
    
    func getNumRows() -> Int {
        return rows.count
    }
    
    func getRow(index: Int) -> UITableViewCell {
        return rows[index]
    }
}