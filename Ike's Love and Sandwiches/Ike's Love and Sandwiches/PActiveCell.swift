//
//  PActiveCell.swift
//  Ike's Love and Sandwiches
//
//  Created by Christopher Raleigh on 2016-09-26.
//  Copyright © 2016 Ike's Place. All rights reserved.
//

import UIKit

protocol PActiveCell {
    var cell: UITableViewCell {get}
    func selectCell()
}
