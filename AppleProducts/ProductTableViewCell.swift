//
//  ProductTableViewCell.swift
//  AppleProducts
//
//  Created by Ikhsan on 4/10/17.
//  Copyright © 2017 Ikhsan. All rights reserved.
//

import UIKit

class ProductTableViewCell: UITableViewCell {

    @IBOutlet weak var productImageView: UIImageView!
    @IBOutlet weak var productTitleLabel: UILabel!
    @IBOutlet weak var productDescriptionLabel: UILabel!
    
    var product: Product? {
        didSet {
            self.updateUI()
        }
    }
    
    func updateUI(){
        productImageView?.image = product?.image
        productTitleLabel?.text = product?.title
        productDescriptionLabel?.text = product?.description
    }
    
}
