//
//  SandwichCustomizerView.swift
//  Ike's Love and Sandwiches
//
//  Created by Christopher Raleigh on 2016-10-02.
//  Copyright © 2016 Ike's Place. All rights reserved.
//

import UIKit

class SandwichCustomizerView: UITableViewController {
    private var ikesTableView: IkesTableView? {
        return tableView as? IkesTableView
    }
    
    private func componentBoxToActiveCell(box: FoodComponentBox) -> PActiveCell {
        let boxName = box.title
        let newCell = CellToView.createCell(text: boxName)
        return CellToView(cell: newCell, viewController: nil, navigationController: navigationController)
    }
    
    private func makeSandwichSection(customizer: SandwichCustomizer) -> IkesTableSection {
        let title = "Sandwich"
        let contents = customizer.sandwich.base.receiptPrintRow()
        let section = ReceiptView.orderRowToSection(internalName: title, row: contents)
        return section
    }
    
    private func makeCustomizationSection(customizer: SandwichCustomizer) -> IkesTableSection {
        let title = "Customize"
        let contents = customizer.boxes
        var activeCells = [PActiveCell]()
        for c in contents {
            let ac = componentBoxToActiveCell(box: c)
            activeCells.append(ac)
        }
        return IkesTableSection(internalName: title, rows: activeCells)
    }
    
    func setCustomizer(customizer: SandwichCustomizer) {
        if let itv = ikesTableView {
            let sandwichSection = makeSandwichSection(customizer: customizer)
            let customizationSection = makeCustomizationSection(customizer: customizer)
            let newDataSource = IkesDataSource(sections: [sandwichSection, customizationSection])
            itv.setDataSourceAndDelegate(dSource: newDataSource)
        }
    }
}
