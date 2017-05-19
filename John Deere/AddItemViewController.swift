//
//  AddItemViewController.swift
//  John Deere
//
//  Created by Emmanuel Idehen on 5/18/17.
//  Copyright © 2017 Emmanuel Idehen. All rights reserved.
//

import UIKit

class AddItemViewController: UIViewController {

    var itemCreated: Inventory!
    
    @IBOutlet weak var itemNameTextField: UITextField!
    
    @IBOutlet weak var quantityTextField: UITextField!
    
    
    @IBAction func cancelButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    
    
    @IBAction func saveButtonPressed(_ sender: Any) {
        // grab item name and quantity and store in constants.
        // Create an item object.
        // Call unwind Segue
        // We'll append new object our data source inside prepare for segue function
        
        // What if either text field is empty?  Do you still create the object?  How do you deal with this?
        
        let itemName = itemNameTextField.text
        let quantity = Int(quantityTextField.text!)
        
        if !(itemName?.isEmpty)! && quantity != nil {
            // we now know both have valid inputs, so create an object and trigger the segue.
            itemCreated = Inventory(quantity: quantity!, product: itemName!, notes: nil)
            performSegue(withIdentifier: "unwindSegue", sender: nil)
        }
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "unwindSegue" {
            let nextVC = segue.destination as! InventoryViewController
            nextVC.InventoryItems.append(itemCreated)
            }
    }

}
