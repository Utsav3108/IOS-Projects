//
//  ImagePickerViewController.swift
//  UIApp
//
//  Created by webcodegenie on 17/06/24.
//

import UIKit

class ImagePickerViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var imageView: UIImageView!
    var imagePicker = UIImagePickerController()
    var pickImageCallback : ((UIImage) -> ())?;
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    
    @IBAction func btnClicked(_ sender: Any) {
        ImagePickerManager().pickImage(self){ [self] image in
            imageView.image = image
        }
    }
    

}
