//
//  Hashing.swift
//  Ike's Love and Sandwiches
//
//  Created by Christopher Raleigh on 2016-09-12.
//  Copyright © 2016 Ike's Place. All rights reserved.
//

class Hashing {
    private static var nextHashValue = 0
    
    static func getNextHashValue() -> Int {
        let hv = nextHashValue
        nextHashValue += 1
        return hv
    }
}