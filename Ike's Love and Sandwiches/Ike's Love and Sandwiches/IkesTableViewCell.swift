//
//  IkesTableViewCell.swift
//  Ike's Love and Sandwiches
//
//  Created by Christopher Raleigh on 2016-09-09.
//  Copyright © 2016 Ike's Place. All rights reserved.
//

import UIKit

class IkesTableViewCell {
    var style: UITableViewCellStyle = .default
    
    var text: String? {
        didSet {
            stateChanged()
        }
    }
    
    var detailText: String? {
        didSet {
            stateChanged()
        }
    }
    
    var checkmarked: Bool = false {
        didSet {
            stateChanged()
        }
    }
    
    var selectListener: PCellSelectListener?
    
    var stateChangedListener: PCellStateChangedListener?
    
    func makeUICell() -> UITableViewCell {
        let newCell = UITableViewCell(style: style, reuseIdentifier: nil)
        if let tl = newCell.textLabel {
            tl.text = text
        }
        if let dtl = newCell.detailTextLabel {
            dtl.text = detailText
        }
        if checkmarked {
            newCell.accessoryType = .checkmark
        }
        return newCell
    }
    
    private func stateChanged() {
        if let scl = stateChangedListener {
            scl.cellStateChanged(sender: self)
        }
    }
}
