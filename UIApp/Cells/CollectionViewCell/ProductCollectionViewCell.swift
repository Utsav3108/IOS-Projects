//
//  ProductCollectionViewCell.swift
//  UIApp
//
//  Created by webcodegenie on 17/06/24.
//

import UIKit

class ProductCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var mainView: UIView!
    
    @IBOutlet weak var productImage: UIImageView!
    
    // Distance View
    @IBOutlet weak var distanceView: UIView!
    
    @IBOutlet weak var lbDistance: UILabel!
    
    // Status
    
    @IBOutlet weak var lbStatus: UILabel!
    
    // Product Rating
    
    @IBOutlet weak var productRatingView: UIView!
    
    @IBOutlet weak var starImage: UIImageView!
    
    @IBOutlet weak var lbRating: UILabel!
    
    
    
}
