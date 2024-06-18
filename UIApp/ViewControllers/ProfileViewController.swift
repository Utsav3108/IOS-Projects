//
//  ProfileViewController.swift
//  UIApp
//
//  Created by webcodegenie on 17/06/24.
//

import UIKit

class ProfileViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    
    // General Outlets
    
    @IBOutlet weak var scrollView: UIScrollView!
    

    // Upper View
    @IBOutlet weak var upperView: UIView!
    
    @IBOutlet weak var backBtn: UIButton!
    
    @IBOutlet weak var moreBtn: UIButton!
    
    @IBOutlet weak var profilePic: UIImageView!
    
    @IBOutlet weak var lbUserName: UILabel!
    
    @IBOutlet weak var lbAddress: UILabel!
    
    @IBOutlet weak var pinImage: UIImageView!
    
    /// Messages and Maps
    @IBOutlet weak var btnMessage: UIButton!
    
    @IBOutlet weak var btnMap: UIButton!
    
    /// Review Stack View
    
    @IBOutlet weak var viewCustomerImages: UIView!
    
    @IBOutlet weak var imageCustomers: UIImageView!
    
    @IBOutlet weak var lbNumberOfCustomers: UILabel!
    
    /// Average Rating View
    @IBOutlet weak var AverageRatingView: UIView!
    
    @IBOutlet weak var imageStar: UIImageView!
    
    @IBOutlet weak var lbAverageReview: UILabel!
    
    @IBOutlet weak var lbNumberOfReviews: UILabel!
    
    /// Number Of Items
    @IBOutlet weak var ItemViews: UIView!
    
    @IBOutlet weak var lbNumberOfItems: UILabel!
    
    @IBOutlet weak var lbTotal: UILabel!
    
    // line
    
    @IBOutlet weak var lineView: UIView!
    
    // Table View
    
    @IBOutlet weak var ReviewTableView: UITableView!

    
    // Global Variables
    
    var reviewerNames = ["Jon Smith", "Samantha bauer", "Alexander Wang", "Lisa Morris"]
    var reviews = ["Excellent", "Great", "Excellent", "Bad"]
    
    var ratings = ["5.0", "4.0", "5.0", "2.0"]
    
    var colours : [BackGroundColor] = [.green, .purple, .green, .red]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupViews()
        
        ReviewTableView.delegate = self
        ReviewTableView.dataSource = self
    }
    
    func setupViews(){
        btnMap.makeCircle()
        btnMessage.makeCircle()
        
        profilePic.makeCircle()
        lineView.applyCornerRadius(radius: 3)
        
        ReviewTableView.layer.cornerRadius = 20
        ReviewTableView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner, .layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return reviewerNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = ReviewTableView.dequeueReusableCell(withIdentifier: "ReviewTableViewCell", for: indexPath) as! ReviewTableViewCell
        
        let index = indexPath.row
        
        cell.colour = colours[index]
        cell.imageReviewerProfile.image = .profile
        cell.lbReviewerName.text = reviewerNames[index]
        cell.lbRating.text = ratings[index]
        cell.lbReview.text = reviews[index]
        cell.lbReviewDesc.text = "Very Good process of development"
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        105
    }
    
    
    



}
