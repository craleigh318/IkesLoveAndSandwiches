//
//  CellToView.swift
//  Ike's Love and Sandwiches
//
//  Created by Christopher Raleigh on 2016-09-26.
//  Copyright © 2016 Ike's Place. All rights reserved.
//

import UIKit

class CellToView: ActiveCell {
    static func createCell(
        text: String? = nil, detailText: String? = nil) -> UITableViewCell {
        return ActiveCell.createCell(
            text: text, detailText: detailText,
            accessory: UITableViewCellAccessoryType.disclosureIndicator)
    }
    
    private var viewController: UIViewController?
    
    private weak var navigationController: UINavigationController?
    
    init(cell: UITableViewCell, viewController: UIViewController? = nil,
         navigationController: UINavigationController? = nil) {
        self.viewController = viewController
        self.navigationController = navigationController
        super.init(cell: cell)
    }
    
    convenience init(
        text: String? = nil, detailText: String? = nil, viewController: UIViewController? = nil,
        navigationController: UINavigationController? = nil) {
        let newCell = CellToView.createCell(text: text, detailText: detailText)
        self.init(cell: newCell, viewController: viewController, navigationController: navigationController)
    }
    
    override func selectCell() {
        super.selectCell()
        if let vc = viewController {
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}
