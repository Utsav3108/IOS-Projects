//
//  Extension.swift
//  UIApp
//
//  Created by webcodegenie on 14/06/24.
//

import Foundation
import UIKit

extension UIView {
    func applyCornerRadius(radius: CGFloat) {
        self.layer.cornerRadius = radius
        self.clipsToBounds = true
    }
    
    func makeCircle(){
        applyCornerRadius(radius: self.frame.width / 2)
    }
}
