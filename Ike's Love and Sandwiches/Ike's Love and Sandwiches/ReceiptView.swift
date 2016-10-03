//
//  ReceiptView.swift
//  Ike's Love and Sandwiches
//
//  Created by Christopher Raleigh on 2016-10-02.
//  Copyright © 2016 Ike's Place. All rights reserved.
//

import UIKit

class ReceiptView {
    static func orderRowToCells(row: IkesOrderRow) -> [UITableViewCell] {
        let text = row.leftCell
        let detail = row.rightCell
        let cellOne = UITableViewCell()
        cellOne.textLabel?.text = text
        cellOne.detailTextLabel?.text = detail
        var cells = [cellOne]
        if let bottomText = row.bottomCell {
            let cellTwo = UITableViewCell()
            cellTwo.textLabel?.text = bottomText
            cells.append(cellTwo)
        }
        return cells
    }
}
