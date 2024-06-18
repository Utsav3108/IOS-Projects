//
//  ItemTableViewCell.swift
//  UIApp
//
//  Created by webcodegenie on 14/06/24.
//

import UIKit

class ItemTableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    
    @IBOutlet weak var sectionHeader: UIView!
    
    @IBOutlet weak var ItemCollectionView: UICollectionView!
    
    var itemImages = [] as [String]
    var itemNames = [] as [String]
    var itemPrices = [] as [String]
    var itemRating = [] as [String]
    var itemLiked = [] as [Bool]

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        ItemCollectionView.delegate = self
        ItemCollectionView.dataSource = self
        
       
        sectionHeader.layer.cornerRadius = 20
        sectionHeader.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = ItemCollectionView.dequeueReusableCell(withReuseIdentifier: "ItemCollectionViewCell", for: indexPath) as! ItemCollectionViewCell
        
        if itemLiked[indexPath.item] {
            cell.heartImage.image = .heartPurple24
            cell.starImage.image = .starPurple24
            cell.itemRating.textColor = .purple
        }
    
        cell.ItemImagesView.applyCornerRadius(radius: 20)
        cell.itemImage.image = UIImage(named: itemImages[indexPath.item])
        cell.itemName.text = itemNames[indexPath.item]
        cell.itemPrice.text = "$" + itemPrices[indexPath.item]
        cell.itemRating.text = itemRating[indexPath.item]
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        
        return CGSize(width: 163, height: 253)
    }
    
    

}
