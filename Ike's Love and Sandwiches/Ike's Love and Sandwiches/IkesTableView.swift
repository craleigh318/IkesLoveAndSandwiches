//
//  IkesTableView.swift
//  Ike's Love and Sandwiches
//
//  Created by Christopher Raleigh on 2016-09-30.
//  Copyright © 2016 Ike's Place. All rights reserved.
//

import UIKit

class IkesTableView: UITableView {
    private var dSource = IkesDataSource()
    
    override init(frame: CGRect, style: UITableViewStyle) {
        super.init(frame: frame, style: style)
        dataSource = dSource
    }
}
