//
//  ProducDetailViewController.swift
//  AppleProducts
//
//  Created by Ikhsan on 14/10/17.
//  Copyright © 2017 Ikhsan. All rights reserved.
//

import UIKit

class ProducDetailViewController: UITableViewController {

    
    @IBOutlet weak var productImageView: UIImageView!
    var product: Product? = ProductLine.getProductLines()[0].products[0]
    
    @IBOutlet weak var productTitleTextView: UITextField!
    
    @IBOutlet weak var productDescriptionTextView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        productTitleTextView.text = product?.title
        productDescriptionTextView.text = product?.description
        productImageView.image = product?.image
    }

    
    override func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath?
    {
        if indexPath.section == 0 && indexPath.row == 0 {
            return indexPath
        }else {
            return nil
        }
    }
    

}
