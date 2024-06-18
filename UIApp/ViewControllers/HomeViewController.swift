//
//  ViewController.swift
//  UIApp
//
//  Created by webcodegenie on 14/06/24.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
 

    @IBOutlet weak var TableView: UITableView!
    

    @IBOutlet weak var HeaderView: UIView!
    
    // Header Outlets
    @IBOutlet weak var searchImages: UIImageView!
    
    @IBOutlet weak var btnNotification: UIButton!
    
    @IBOutlet weak var LocationView: UIView!
    
    @IBOutlet weak var locationImage: UIImageView!
    
    @IBOutlet weak var locationName: UILabel!
    
    @IBOutlet weak var CategoriesCollectionView: UICollectionView!
    
    var categoryImagesNames = ["bicycle-64", "smart-watch-64", "Guitar-64", "bicycle-64", "smart-watch-64"]
    var categoryName = ["Cycle", "Watch", "Guitar", "Cycle", "Watch"]
    var categoryColour  = ["green", "purple", "pink","green", "purple"]
    
    var itemImages = ["ipad-64", "tent-64", "cooker-64", "ipad-64", "tent-64"]
    var itemNames = ["Google Pixel Tablet", "Base Camp 4-Person Tent", "Pot with stainless steel", "Google Pixel Tablet", "Base Camp 4-Person Tent"]
    var itemPrices = ["15.00", "17.00", "5.00", "15.00", "17.00"]
    var itemRating = ["4.1", "4.9", "4.6", "4.1", "4.9"]
    var itemLiked = [false, true, false, false, true]
    
    var appNames = ["Craftsman Cardless Drill", "Cooker stainless steel", "bat wooden"] as [String]
    var appDistances = ["5.0", "6.0", "7.0"] as [String]
    var appRatings = ["4.9", "4.1", "4.5"] as [String]
    var appPrices = ["20", "10", "11"] as [String]
    var appImages = ["drill-24", "cooker-64", "bat-64"] as [String]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        TableView.delegate = self
        TableView.dataSource = self
        
        CategoriesCollectionView.dataSource = self
        CategoriesCollectionView.delegate = self
        
        initialsetup()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = TableView.dequeueReusableCell(withIdentifier: "ItemTableViewCell", for: indexPath) as! ItemTableViewCell
            
            cell.itemNames = itemNames
            cell.itemImages = itemImages
            cell.itemPrices = itemPrices
            cell.itemRating = itemRating
            cell.itemLiked = itemLiked
            
            return cell
        }else {
            let cell = TableView.dequeueReusableCell(withIdentifier: "ApplianceTableViewCell", for: indexPath) as! ApplianceTableViewCell
            
            cell.appNames = appNames
            cell.appImages = appImages
            cell.appPrices = appPrices
            cell.appRatings = appRatings
            cell.appDistances = appDistances
            
            return cell
        }
    }
    

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 301
        }else {
            return 195
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = CategoriesCollectionView.dequeueReusableCell(withReuseIdentifier: "CategoriesCollectionViewCell", for: indexPath) as! CategoriesCollectionViewCell
        
        cell.CategoryImage.image = UIImage(named: categoryImagesNames[indexPath.item])
        cell.CategoryName.text = categoryName[indexPath.item]
        cell.CategoryView.applyCornerRadius(radius: 20)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 128, height: 128)
    }
    
    func initialsetup(){
        
        LocationView.applyCornerRadius(radius: 20)
        LocationView.backgroundColor = UIColor(white: 0.9, alpha: 0.1)
    }

    @IBAction func checkNotifcation(_ sender: Any) {
        
        let notify = self.storyboard?.instantiateViewController(withIdentifier: "NotificationViewController") as! NotificationViewController
        
        notify.modalPresentationStyle = .fullScreen
        
        self.present(notify, animated: true)
        
    }
    

}

