//
//  IkesDataSource.swift
//  Ike's Love and Sandwiches
//
//  Created by Christopher Raleigh on 2016-09-13.
//  Copyright © 2016 Ike's Place. All rights reserved.
//

import UIKit

class IkesDataSource: NSObject, UITableViewDataSource {
    private var sections: [IkesTableSection]
    
    init(sections: [IkesTableSection]) {
        self.sections = sections
        super.init()
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let thisSection = sections[section]
        return thisSection.getNumRows()
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let sectionNumber = indexPath.section
        let thisSection = sections[sectionNumber]
        let rowNumber = indexPath.row
        return thisSection.getRow(rowNumber)
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return sections.count
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let thisSection = sections[section]
        return thisSection.name
    }
}