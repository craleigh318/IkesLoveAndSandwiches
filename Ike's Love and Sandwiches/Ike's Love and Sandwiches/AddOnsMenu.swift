//
//  AddOnsMenu.swift
//  Ike's Love and Sandwiches
//
//  Created by Christopher Raleigh on 2016-09-04.
//  Copyright © 2016 Ike's Place. All rights reserved.
//

class AddOnsMenu {
    private static let freeAddOnPrice = 0
    private static let addOnNormalPrice = 101
    private static let addOnHighPrice = 202
    
    private static let dirtySauce = AddOn(internalName: "Dirty Sauce", price: freeAddOnPrice)
    private static let lettuce = AddOn(internalName: "Lettuce", price: freeAddOnPrice)
    private static let tomatoes = AddOn(internalName: "Tomatoes", price: freeAddOnPrice)
    static let defaultAddOns = [dirtySauce, lettuce, tomatoes]
    
    private static let redOnions = AddOn(internalName: "Red Onions", price: freeAddOnPrice)
    private static let pickles = AddOn(internalName: "Pickles", price: freeAddOnPrice)
    private static let bananaPeppers = AddOn(internalName: "Banana Peppers", price: freeAddOnPrice)
    private static let jalapenos = AddOn(internalName: "Jalapeños", price: freeAddOnPrice)
    private static let mustard = AddOn(internalName: "Mustard", price: freeAddOnPrice)
    static let freeAddOns = [redOnions, pickles, bananaPeppers, jalapenos, mustard]
    
    private static let avocados = AddOn(internalName: "Avocados", price: addOnHighPrice)
    private static let bacon = AddOn(internalName: "Bacon", price: addOnHighPrice)
    private static let grilledMustrooms = AddOn(internalName: "Grilled Mustrooms", price: 191)
    private static let extraMeat = AddOn(internalName: "Extra Meat", price: 292)
    private static let cucumbers = AddOn(internalName: "Cucumbers", price: 99)
    private static let halalChickenSubstitute = AddOn(internalName: "Substitute Fried Chicken for Halal Chicken", price: addOnHighPrice)
    static let paidAddOns = [avocados, bacon, grilledMustrooms, extraMeat, cucumbers, halalChickenSubstitute]
    
    private static let americanCheese = AddOn(internalName: "American", price: addOnNormalPrice)
    private static let jackCheese = AddOn(internalName: "Jack", price: addOnNormalPrice)
    private static let pepperJackCheese = AddOn(internalName: "Pepper Jack", price: addOnNormalPrice)
    private static let swissCheese = AddOn(internalName: "Swiss", price: addOnNormalPrice)
    private static let provoloneCheese = AddOn(internalName: "Provolone", price: 69)
    private static let cheddarCheese = AddOn(internalName: "Cheddar", price: addOnNormalPrice)
    private static let havartiCheese = AddOn(internalName: "Havarti", price: addOnNormalPrice)
    private static let creamCheese = AddOn(internalName: "Cream Cheese", price: addOnNormalPrice)
    static let extraCheeses = [americanCheese, jackCheese, pepperJackCheese, swissCheese, provoloneCheese, cheddarCheese, havartiCheese, creamCheese]
    
    private static let bbqSauce = AddOn(internalName: "BBQ", price: addOnNormalPrice)
    private static let ranchSauce = AddOn(internalName: "Ranch", price: addOnNormalPrice)
    private static let pesto = AddOn(internalName: "Pesto", price: addOnNormalPrice)
    private static let honeyMustard = AddOn(internalName: "Honey Mustard", price: addOnNormalPrice)
    private static let italianSauce = AddOn(internalName: "Italian", price: addOnNormalPrice)
    private static let blueCheese = AddOn(internalName: "Blue Cheese", price: addOnNormalPrice)
    private static let marinaraSauce = AddOn(internalName: "Marinara", price: addOnNormalPrice)
    private static let frenchSauce = AddOn(internalName: "French Sauce", price: addOnNormalPrice)
    private static let cranberrySauce = AddOn(internalName: "Cranberry Sauce", price: addOnNormalPrice)
    private static let caesarSauce = AddOn(internalName: "Cæsar", price: addOnNormalPrice)
    private static let honey = AddOn(internalName: "Real Honey", price: addOnHighPrice)
    private static let godFatherSauce = AddOn(internalName: "God Father Sauce", price: addOnHighPrice)
    private static let habaneroSauce = AddOn(internalName: "Habanero Sauce", price: addOnHighPrice)
    static let extraSauces = [bbqSauce, ranchSauce, pesto, honeyMustard, honeyMustard, italianSauce, blueCheese, marinaraSauce, frenchSauce, cranberrySauce, caesarSauce, honey, godFatherSauce, habaneroSauce]
}