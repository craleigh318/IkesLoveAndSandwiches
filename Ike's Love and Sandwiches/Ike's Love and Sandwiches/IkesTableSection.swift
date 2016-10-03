//
//  IkesTableSection.swift
//  Ike's Love and Sandwiches
//
//  Created by Christopher Raleigh on 2016-09-12.
//  Copyright © 2016 Ike's Place. All rights reserved.
//

import UIKit

class IkesTableSection {
    var name: String? {
        return Localization.localizeOptionalString(internalString: internalName)
    }
    
    private var internalName: String?
    
    private var rows: [PActiveCell]
    
    init (internalName: String?, rows: [PActiveCell]) {
        self.internalName = internalName
        self.rows = rows
    }
    
    func getNumRows() -> Int {
        return rows.count
    }
    
    func getRow(index: Int) -> PActiveCell {
        return rows[index]
    }
}
