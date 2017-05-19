//
//  Inventory.swift
//  John Deere
//
//  Created by Emmanuel Idehen on 5/18/17.
//  Copyright © 2017 Emmanuel Idehen. All rights reserved.
//

import Foundation

class Inventory {
    var quantity: Int
    var productName: String
    var notes: String?
    
    init(quantity: Int, product: String, notes: String?) {
        self.quantity = quantity
        self.quantity = quantity
        self.productName = product
        self.notes = notes
    }
}

//class location: UIViewControlar {}
//class  quantity: UIViewControlar {}
