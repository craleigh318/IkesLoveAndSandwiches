//
//  IkesTableViewController.swift
//  Ike's Love and Sandwiches
//
//  Created by Christopher Raleigh on 2016-09-30.
//  Copyright © 2016 Ike's Place. All rights reserved.
//

import UIKit

class IkesTableViewController: UITableViewController {
    func setDataSourceAndDelegate(dSource: IkesDataSource) {
        tableView.dataSource = dSource
        tableView.delegate = dSource
        tableView.reloadData()
    }
}
