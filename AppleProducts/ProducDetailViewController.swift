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
        productTitleTextView.delegate = self
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
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            if UIImagePickerController.isSourceTypeAvailable(.photoLibrary){
                let imagePicker = UIImagePickerController()
                imagePicker.allowsEditing = false
                imagePicker.sourceType = .photoLibrary
                imagePicker.delegate = self
                
                present(imagePicker, animated: true, completion: nil)
            }
        }
    }

}

extension ProducDetailViewController : UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

extension ProducDetailViewController {
    override func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        productDescriptionTextView.resignFirstResponder()
        productTitleTextView.resignFirstResponder()
    }
}

extension ProducDetailViewController : UIImagePickerControllerDelegate {
    
}

extension ProducDetailViewController : UINavigationControllerDelegate {
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any])
    {
        if let selectedImage = info[UIImagePickerControllerOriginalImage] as? UIImage {
            productImageView.image = selectedImage
            productImageView.contentMode = .scaleAspectFit
        }
        
        dismiss(animated: true, completion: nil)
    }
}
