//
//  IkesDataSource.swift
//  Ike's Love and Sandwiches
//
//  Created by Christopher Raleigh on 2016-09-13.
//  Copyright © 2016 Ike's Place. All rights reserved.
//

import UIKit

class IkesDataSource: NSObject, UITableViewDataSource, UITableViewDelegate {
    private var sections: [IkesTableSection]
    
    init(sections: [IkesTableSection]) {
        self.sections = sections
        super.init()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let thisSection = sections[section]
        return thisSection.getNumRows()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let thisCell = getActiveCell(indexPath: indexPath)
        return thisCell.cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let thisSection = sections[section]
        return thisSection.name
    }
    
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        let thisSection = sections[section]
        return thisSection.footer
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let thisCell = getActiveCell(indexPath: indexPath)
        thisCell.selectCell()
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func getActiveCell(indexPath: IndexPath) -> PActiveCell {
        let sectionNumber = indexPath.section
        let thisSection = sections[sectionNumber]
        let rowNumber = indexPath.row
        return thisSection.getRow(index: rowNumber)
    }
}
