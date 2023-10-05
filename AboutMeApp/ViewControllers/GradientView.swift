//
//  GradientView.swift
//  AboutMeApp
//
//  Created by Irina Muravyeva on 05.10.2023.
//

import UIKit

class GradientView: UIView {
    
    private let gradientLayer = CAGradientLayer()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupGradient()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        gradientLayer.frame = bounds
    }
    func setupGradient() {
        self.layer.addSublayer(gradientLayer)
        gradientLayer.colors = [UIColor.systemPink.cgColor,
                                UIColor.systemCyan.cgColor]
//        view.layer.insertSublayer(gradientLayer, at: 0)
    }

}
