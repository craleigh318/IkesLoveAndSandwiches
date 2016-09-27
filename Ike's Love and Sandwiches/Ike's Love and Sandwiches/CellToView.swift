//
//  CellToView.swift
//  Ike's Love and Sandwiches
//
//  Created by Christopher Raleigh on 2016-09-26.
//  Copyright © 2016 Ike's Place. All rights reserved.
//

import UIKit

class CellToView: ActiveCell {
    private var viewController: UIViewController?
    
    private weak var navigationController: UINavigationController?
    
    init(cell: UITableViewCell, viewController: UIViewController? = nil,
         navigationController: UINavigationController? = nil) {
        self.viewController = viewController
        self.navigationController = navigationController
        super.init(cell: cell)
    }
    
    override func selectCell() {
        super.selectCell()
        if let nc = navigationController {
            if let vc = viewController {
                nc.pushViewController(vc, animated: true)
            }
        }
    }
}
