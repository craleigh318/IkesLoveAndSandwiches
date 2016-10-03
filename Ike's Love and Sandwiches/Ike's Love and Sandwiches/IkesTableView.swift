//
//  IkesTableView.swift
//  Ike's Love and Sandwiches
//
//  Created by Christopher Raleigh on 2016-10-03.
//  Copyright © 2016 Ike's Place. All rights reserved.
//

import UIKit

class IkesTableView: UITableView {
    func setDataSourceAndDelegate(dSource: IkesDataSource) {
        dataSource = dSource
        delegate = dSource
        reloadData()
    }
}
