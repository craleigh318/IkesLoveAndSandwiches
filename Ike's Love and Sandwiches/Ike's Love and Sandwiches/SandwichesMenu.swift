//
//  SandwichesMenu.swift
//  Ike's Love and Sandwiches
//
//  Created by Christopher Raleigh on 2016-09-09.
//  Copyright © 2016 Ike's Place. All rights reserved.
//

class SandwichesMenu {
    private static let sandwichNormalPrice = 999
    
    private static let steveYoung = SandwichBase(number: "8", internalName: "Steve Young", price: sandwichNormalPrice, internalDescription: "All-Beef Meatballs, Bacon, Marinara, Pepper Jack")
    private static let fortyNiner = SandwichBase(number: "49", internalName: "The 49er", price: sandwichNormalPrice, internalDescription: "Halāl Chicken, Buffalo Wing Sauce, Honey Mustard, Gouda")
    private static let sirewich = SandwichBase(number: "98", internalName: "Jaymee Sirewich", price: sandwichNormalPrice, internalDescription: "Fried Chicken, Ike's Yellow BBQ, Ranch, Pepper Jack")
    static let meatSandwiches = [steveYoung, fortyNiner, sirewich]
}