////
////  GradientView.swift
////  AboutMeApp
////
////  Created by Irina Muravyeva on 02.10.2023.
////
//
//import Foundation
//import UIKit
//
//class GradientView: UIView {
//    private let gradientLayor = CAGradientLayer()
//
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//    }
//
//    required init?(coder: NSCoder) {
//        super.init(coder: coder)
//        setupGradient()
//    }
//
//    override func layoutSubviews() {
//        super.layoutSubviews()
//        gradientLayor.frame = bounds
//    }
//
//    private func setupGradient() {
//        self.layer.addSublayer(gradientLayor)
//        self.layer.add
//        gradientLayor.colors = [UIColor.systemPink.cgColor, UIColor.systemCyan.cgColor]
//        gradientLayor.
////        gradientLayor.startPoint = CGPoint(x: 0, y: 0)
////        gradientLayor.endPoint = CGPoint(x: 1, y: 1)
//    }
//}
