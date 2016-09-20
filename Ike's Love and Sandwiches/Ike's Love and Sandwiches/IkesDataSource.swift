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
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let thisSection = sections[section]
        return thisSection.getNumRows()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let sectionNumber = (indexPath as NSIndexPath).section
        let thisSection = sections[sectionNumber]
        let rowNumber = (indexPath as NSIndexPath).row
        return thisSection.getRow(rowNumber)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let thisSection = sections[section]
        return thisSection.name
    }
}
