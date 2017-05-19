//
//  InventoryCell.swift
//  John Deere
//
//  Created by Emmanuel Idehen on 5/18/17.
//  Copyright © 2017 Emmanuel Idehen. All rights reserved.
//

import UIKit

class InventoryCell: UITableViewCell {

    @IBOutlet weak var location: UILabel!
    @IBOutlet weak var quantity: UILabel!
    @IBOutlet weak var productName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    func setUpCell(item: Inventory) {
        
        self.quantity.text = "\(item.quantity)"
        self.productName.text = "\(item.productName)"
        
    }
    
}
