//
//  BreadMenu.swift
//  Ike's Love and Sandwiches
//
//  Created by Christopher Raleigh on 2016-09-05.
//  Copyright © 2016 Ike's Place. All rights reserved.
//

class BreadMenu {
    private static let dutchCrunch = Bread(internalName: "Dutch Crunch")
    private static let french = Bread(internalName: "French")
    private static let sourdough = Bread(internalName: "SF Sourdough")
    private static let wheat = Bread(internalName: "Whole Wheat")
    private static let glutenFree = Bread(internalName: "Gluten Free")
    static let breads = [dutchCrunch, french, sourdough, wheat, glutenFree]
    
    static let defaultBread = dutchCrunch
}
