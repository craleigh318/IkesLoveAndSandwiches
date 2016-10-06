//
//  ReceiptView.swift
//  Ike's Love and Sandwiches
//
//  Created by Christopher Raleigh on 2016-10-02.
//  Copyright © 2016 Ike's Place. All rights reserved.
//

import UIKit

class ReceiptView {
    static func orderRowToCell(row: IkesOrderRow) -> UITableViewCell {
        let text = row.leftCell
        let detail = row.rightCell
        let cellOne = UITableViewCell(style: UITableViewCellStyle.value1, reuseIdentifier: nil)
        cellOne.textLabel?.text = text
        cellOne.detailTextLabel?.text = detail
        return cellOne
    }
    
    static func orderRowToCells(row: IkesOrderRow) -> [UITableViewCell] {
        let cellOne = orderRowToCell(row: row)
        var cells = [cellOne]
        if let bottomText = row.bottomCell {
            let cellTwo = UITableViewCell()
            cellTwo.textLabel?.text = bottomText
            cells.append(cellTwo)
        }
        return cells
    }
}
