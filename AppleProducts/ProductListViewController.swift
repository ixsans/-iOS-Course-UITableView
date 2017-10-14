//
//  ProductListViewController.swift
//  AppleProducts
//
//  Created by Ikhsan on 30/9/17.
//  Copyright © 2017 Ikhsan. All rights reserved.
//

import UIKit

class ProductListViewController: UITableViewController {

    var productLines = ProductLine.getProductLines()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.estimatedRowHeight = tableView.rowHeight
        tableView.rowHeight = UITableViewAutomaticDimension
        
        navigationItem.rightBarButtonItem = editButtonItem
    }

    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return productLines.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return productLines[section].products.count
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return productLines[section].name
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductCell", for: indexPath) as! ProductTableViewCell
        let product = productLines[indexPath.section].products[indexPath.row]
        cell.product = product
        return cell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
                let productLine = productLines[indexPath.section]
                productLine.products.remove(at: indexPath.row)
                tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
}
