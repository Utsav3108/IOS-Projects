//
//  ProductViewController.swift
//  UIApp
//
//  Created by webcodegenie on 17/06/24.
//

import UIKit

class ProductViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {

    
    
    // General Outlets
    @IBOutlet weak var scrollView: UIScrollView!

    // Title View
    @IBOutlet weak var titleView: UIView!
    
    @IBOutlet weak var backBtn: UIButton!
    
    @IBOutlet weak var likeBtn: UIButton!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var viewProfileBtn: UIButton!
    
    // Product Collection View
    @IBOutlet weak var productCollectionView: UICollectionView!
    
    // Page Control
    @IBOutlet weak var pageControl: UIPageControl!
    
    // Profile View
    @IBOutlet weak var profileView: UIView!
    
    @IBOutlet weak var profileImage: UIImageView!
    
    @IBOutlet weak var usernameLabel: UILabel!
    
    @IBOutlet weak var ratingView: UIView!
    
    @IBOutlet weak var starOne: UIImageView!
    
    @IBOutlet weak var starTwo: UIImageView!
    
    @IBOutlet weak var starThree: UIImageView!
    
    @IBOutlet weak var starFour: UIImageView!
    
    @IBOutlet weak var starFive: UIImageView!
    
    @IBOutlet weak var ratingLabel: UILabel!
    
    // Package Section
    @IBOutlet weak var viewPackage: UIStackView!
    
    /// Hourly
    @IBOutlet weak var viewHourlySection: UIView!
    
    @IBOutlet weak var lbHourly: UILabel!
    
    @IBOutlet weak var lbHourlyPrice: UILabel!
    
    @IBOutlet weak var lbPerHour: UILabel!
    
    /// Daily
    @IBOutlet weak var viewDailySection: UIView!
    @IBOutlet weak var lbDaily: UILabel!
    
    @IBOutlet weak var lbDailyPrice: UILabel!
    
    @IBOutlet weak var lbPerDay: UILabel!
    
    /// Monthly
    @IBOutlet weak var viewMonthSection: UIView!
    
    @IBOutlet weak var lbMonthly: UILabel!
    
    @IBOutlet weak var lbMonthlyPrice: UILabel!
    
    @IBOutlet weak var lbPerMonth: UILabel!
    
    // Set Date Section
    @IBOutlet weak var setDateView: UIView!
    
    @IBOutlet weak var imageCalender: UIImageView!
    @IBOutlet weak var btnSetDate: UIButton!
    
    @IBOutlet weak var lbFourDaysLeft: UILabel!
    
    // Price Section
    @IBOutlet weak var leasePriceBtn: UIButton!
    
    
    // Global Variables
    let productImages = ["tent-64", "tent-64", "tent-64"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setTheView()
        
        productCollectionView.delegate = self
        productCollectionView.dataSource = self
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        productCollectionView.reloadData()
    }
    
    func setTheView(){
        
        // Title View
        likeBtn.applyCornerRadius(radius: likeBtn.frame.width / 2)
        
        // view Profile btn
        viewProfileBtn.applyCornerRadius(radius: viewProfileBtn.frame.width / 2)
        
        // Package Section
        viewHourlySection.applyCornerRadius(radius: 10)
        viewDailySection.applyCornerRadius(radius: 10)
        viewMonthSection.applyCornerRadius(radius: 10)
        
        // set date section
        setDateView.applyCornerRadius(radius: 10)
        
        // lease price
        leasePriceBtn.applyCornerRadius(radius: 10)
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return productImages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = productCollectionView.dequeueReusableCell(withReuseIdentifier: "ProductCollectionViewCell", for: indexPath) as! ProductCollectionViewCell
        
        cell.productImage.image = UIImage(named: productImages[indexPath.item])
        cell.lbDistance.text = "3.2" + "km"
        cell.lbStatus.text = "Available"
        cell.lbRating.text = "4.9"
        cell.lbStatus.applyCornerRadius(radius: 10)
        cell.distanceView.applyCornerRadius(radius: 10)
    
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: productCollectionView.frame.width, height: 200)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        0
    }
    

    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        pageControl.currentPage = Int(self.productCollectionView .contentOffset.x) /  Int(self.productCollectionView.frame.width)
    }



}
