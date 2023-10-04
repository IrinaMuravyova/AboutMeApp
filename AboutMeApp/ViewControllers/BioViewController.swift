//
//  BioViewController.swift
//  AboutMeApp
//
//  Created by Irina Muravyeva on 04.10.2023.
//

import UIKit

class BioViewController: UIViewController {
    // MARK: - IBOutlet
    @IBOutlet var bioLabel: UILabel!
    
    var personsBio: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupGradient()
        bioLabel.text = personsBio
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
