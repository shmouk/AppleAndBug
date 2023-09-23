//
//  UIView + Extension.swift
//  MotionCarGame
//
//  Created by Марк on 3.07.23.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach {
            self.addSubview($0)
        }
    }
}

