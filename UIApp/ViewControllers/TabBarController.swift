//
//  TabBarController.swift
//  UIApp
//
//  Created by webcodegenie on 17/06/24.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupMiddleButton()
    }
    
    func setupMiddleButton() {
 
        let addPhotos = UIButton(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
        addPhotos.tag = 2
        var addPhotosFrame = addPhotos.frame
        addPhotosFrame.origin.y = (-15)
        addPhotosFrame.origin.x = tabBar.bounds.width/2 - 22
        
        /* To always keep the button in center. */
        addPhotos.center = view.center
        addPhotos.autoresizingMask = [.flexibleLeftMargin, .flexibleRightMargin]
        
        addPhotos.frame = addPhotosFrame
            
        addPhotos.backgroundColor = UIColor.systemIndigo
        addPhotos.layer.cornerRadius = 10
        addPhotos.layer.shadowOffset = CGSize(width:0, height:0)
        addPhotos.layer.shadowColor = UIColor.gray.cgColor
        addPhotos.layer.shadowRadius = 10
        addPhotos.layer.shadowOpacity = 0.3
        tabBar.addSubview(addPhotos)

        addPhotos.setImage(UIImage(systemName: "plus"), for: .normal)
        addPhotos.tintColor = .white
        addPhotos.addTarget(self, action: #selector(addBtnAction(sender:)), for: .touchUpInside)

        view.layoutIfNeeded()
    }

    @objc private func addBtnAction(sender: UIButton) {
        selectedIndex = 2
    }


    
}
