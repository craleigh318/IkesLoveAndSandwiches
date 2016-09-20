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
    
    static func localizeOptionalString(internalString: String?) -> String? {
        var ret: String?
        if let intStr = internalString {
            ret = localizeString(intStr)
        } else {
            ret = nil
        }
        return ret
    }
}
