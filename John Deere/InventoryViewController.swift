//
//  InventoryViewController.swift
//  John Deere
//
//  Created by Emmanuel Idehen on 5/18/17.
//  Copyright © 2017 Emmanuel Idehen. All rights reserved.
//

import UIKit

class InventoryViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    var InventoryItems = [Inventory]()
    var selectedItem: Inventory!
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let nib = UINib(nibName: "InventoryCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "InventoryCell")
    }

    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func unwindToInventorySegue(segue: UIStoryboardSegue) {
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return InventoryItems.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "InventoryCell", for: indexPath) as! InventoryCell
        
        let item = InventoryItems[indexPath.row]
        
        cell.setUpCell(item: item)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let item = InventoryItems[indexPath.row]
        self.selectedItem = item
        
        performSegue(withIdentifier: "inventoryDetailSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? InventoryDetailViewController {
            destination.inventory = self.selectedItem
        }
    }
}
