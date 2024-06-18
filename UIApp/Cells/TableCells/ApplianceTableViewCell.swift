//
//  ApplianceTableViewCell.swift
//  UIApp
//
//  Created by webcodegenie on 14/06/24.
//

import UIKit

class ApplianceTableViewCell: UITableViewCell, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var ApplianceCollectionView: UICollectionView!

    var appNames = [] as [String]
    var appDistances = [] as [String]
    var appRatings = [] as [String]
    var appPrices = [] as [String]
    var appImages = [] as [String]
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        ApplianceCollectionView.delegate = self
        ApplianceCollectionView.dataSource = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = ApplianceCollectionView.dequeueReusableCell(withReuseIdentifier: "ApplianceCollectionViewCell", for: indexPath) as! ApplianceCollectionViewCell
        let index = indexPath.item
        
        cell.ApplianceView.applyCornerRadius(radius: 10)
        cell.ApplianceImage.image = UIImage(named: appImages[index])
        cell.ApplianceName.text = appNames[index]
        cell.lbPrice.text = "$" + appPrices[index] + "/hr"
        cell.lbRating.text = appRatings[index]
        cell.lbDistance.text = appDistances[index] + "km"
        
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: contentView.frame.width, height: 138)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        15
    }

}
