//
//  ViewController.swift
//  ArrayChallenge
//
//  Created by James Campagno on 6/10/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var shoppingList: [String] = []
//    var items: [String] = []
//    var quantityOfItems: [Int] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
    let items = ["Bananas", "Apples", "Eggs", "Rolls"]
    let quantityOfItems = [6, 4, 12, 4]
        
    shoppingList = makeShoppingList(items, quantityOfItems: quantityOfItems)
        
    }
    
    
    func makeShoppingList(items: [String], quantityOfItems: [Int]) -> [String] {
        var shoppingList: [String] = []
        for (index, quantity) in quantityOfItems.enumerate() {
            let itemWithQuantity = "\(index + 1). \(quantity)" + " \(items[index])"
            shoppingList.append(itemWithQuantity)
        }
        return shoppingList
    }
}