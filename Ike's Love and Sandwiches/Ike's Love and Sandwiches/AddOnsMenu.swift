//
//  AddOnsMenu.swift
//  Ike's Love and Sandwiches
//
//  Created by Christopher Raleigh on 2016-09-04.
//  Copyright © 2016 Ike's Place. All rights reserved.
//

class AddOnsMenu {
    static let dirtySauce = AddOn(internalName: "Dirty Sauce")
    static let lettuce = AddOn(internalName: "Lettuce")
    static let tomatoes = AddOn(internalName: "Tomatoes")
    static let defaultAddOns = [dirtySauce, lettuce, tomatoes]
    
    static let redOnions = AddOn(internalName: "Red Onions")
    static let pickles = AddOn(internalName: "Pickles")
    static let bananaPeppers = AddOn(internalName: "Banana Peppers")
    static let jalapenos = AddOn(internalName: "Jalapeños")
    static let mustard = AddOn(internalName: "Mustard")
    static let freeAddOns = [redOnions, pickles, bananaPeppers, jalapenos, mustard]
}