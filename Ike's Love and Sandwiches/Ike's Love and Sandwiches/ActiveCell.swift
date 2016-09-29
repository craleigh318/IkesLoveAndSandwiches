//
//  ActiveCell.swift
//  Ike's Love and Sandwiches
//
//  Created by Christopher Raleigh on 2016-09-26.
//  Copyright © 2016 Ike's Place. All rights reserved.
//

import UIKit

class ActiveCell: PActiveCell {
    static func createCell(
        text: String? = nil, detailText: String? = nil,
        accessory: UITableViewCellAccessoryType = UITableViewCellAccessoryType.none) -> UITableViewCell {
        let newCell = UITableViewCell()
        newCell.textLabel?.text = text
        newCell.detailTextLabel?.text = text
        newCell.accessoryType = accessory
        return newCell
    }
    
    private(set) var cell: UITableViewCell
    
    init(cell: UITableViewCell) {
        self.cell = cell
    }
    
    func selectCell() {
    }
}
