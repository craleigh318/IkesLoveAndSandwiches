//
//  Localization.swift
//  Ike's Love and Sandwiches
//
//  Created by Christopher Raleigh on 2016-09-09.
//  Copyright © 2016 Ike's Place. All rights reserved.
//

import Foundation

class Localization {
    static func localizeString(internalString: String) -> String {
        return NSLocalizedString(internalString, comment: "")
    }
}