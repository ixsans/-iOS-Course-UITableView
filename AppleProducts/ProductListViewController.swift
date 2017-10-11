//
//  ProductListViewController.swift
//  AppleProducts
//
//  Created by Ikhsan on 30/9/17.
//  Copyright © 2017 Ikhsan. All rights reserved.
//

import UIKit

class ProductListViewController: UITableViewController {

    var products = ProductLine.getProductLines()[1].products
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.estimatedRowHeight = tableView.rowHeight
        tableView.rowHeight = UITableViewAutomaticDimension
    }

    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return products.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductCell", for: indexPath) as! ProductTableViewCell
        let product = products[indexPath.row]
        cell.product = product
        return cell
    }
    
}
