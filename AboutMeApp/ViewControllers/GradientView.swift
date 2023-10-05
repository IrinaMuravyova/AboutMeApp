//
//  GradientView.swift
//  AboutMeApp
//
//  Created by Irina Muravyeva on 05.10.2023.
//

import UIKit

extension UIView {

    func setupGradient() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = bounds
        gradientLayer.colors = [UIColor.systemPink.cgColor,
                                UIColor.systemCyan.cgColor]
        layer.insertSublayer(gradientLayer, at: 0)
    }

}
