//
//  ExperienceViewController.swift
//  AboutMeApp
//
//  Created by Irina Muravyeva on 04.10.2023.
//

import UIKit

class ExperienceViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet var experienceLabel: UILabel!
    
    var experience: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupGradient()
        experienceLabel.text = experience
    }

    // MARK: - Private methods
    private func setupGradient() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [UIColor.systemPink.cgColor,
                                UIColor.systemCyan.cgColor]
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
}
