//
//  DrawCornerCustom.swift
//  Ipd
//
//  Created by Patricia Gabriele Neri on 02/05/2018.
//  Copyright © 2018 pgneri. All rights reserved.
//

import UIKit

extension UIView {
    func roundCorners(_ corners: UIRectCorner, radius: CGFloat) {
        let mask: CACornerMask = corners.maskedValue()
        self.layer.cornerRadius = radius
        self.layer.maskedCorners = mask
    }
}

extension UIRectCorner {
    
    func maskedValue() -> CACornerMask {
        var maskedValue: CACornerMask = []
        
        if self.contains( .topLeft) {
            maskedValue.insert(.layerMinXMinYCorner)
        }
        if self.contains( .topRight) {
            maskedValue.insert(.layerMaxXMinYCorner)
        }
        if self.contains( .bottomLeft) {
            maskedValue.insert(.layerMinXMaxYCorner)
        }
        if self.contains( .bottomRight) {
            maskedValue.insert(.layerMaxXMaxYCorner)
        }
        if self.contains( .allCorners) {
            return [.layerMinXMinYCorner, .layerMaxXMinYCorner, .layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        }
        return maskedValue
    }
}
