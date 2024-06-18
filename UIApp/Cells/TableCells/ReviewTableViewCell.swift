//
//  ProductTableViewCell.swift
//  UIApp
//
//  Created by webcodegenie on 17/06/24.
//

import UIKit

class ReviewTableViewCell: UITableViewCell {
    
    @IBOutlet weak var viewReview: UIView!
    
    @IBOutlet weak var imageReviewerProfile: UIImageView!
    
    @IBOutlet weak var lbReviewerName: UILabel!
    
    @IBOutlet weak var lbReview: UILabel!
    
    @IBOutlet weak var lbReviewDesc: UILabel!
    
    @IBOutlet weak var lbRating: UILabel!
    
    @IBOutlet weak var imageStar: UIImageView!
    
    
    var colour: BackGroundColor!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        
        
        print("colour: ", colour as Any)
        switch colour {
            case .green:
                
                viewReview.backgroundColor = UIColor(named: "Green")
                lbRating.textColor = .systemGreen
                
                lbReview.textColor = .systemGreen
            imageStar.image = UIImage(named: "star-green-24")
                
            case .purple:
            viewReview.backgroundColor = UIColor(named: "Purple")
                lbRating.textColor = .systemPurple
                
                lbReview.textColor = .systemPurple
            imageStar.image = UIImage(named: "star-purple-24")
            case .red:
                viewReview.backgroundColor = UIColor(named: "Red")
                lbRating.textColor = .systemRed
                
                lbReview.textColor = .systemRed
            imageStar.image = UIImage(named: "star-red-24")
            default: break
            
            
        }
        
        imageReviewerProfile.makeCircle()
        viewReview.applyCornerRadius(radius: 20)
    }

}
