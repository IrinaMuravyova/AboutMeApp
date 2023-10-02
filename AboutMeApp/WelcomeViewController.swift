//
//  WelcomeViewController.swift
//  AboutMeApp
//
//  Created by Irina Muravyeva on 02.10.2023.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var logOutButton: UIButton!
    @IBOutlet var welcomeLabel: UILabel!
    
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupGradient()
        welcomeLabel.textColor = .white
    
        //добавить проверку, не выводить, если пустое
        welcomeLabel.text = "Welcome, \(userName ??  "")!"
    }
    
    @IBAction func logOutButtonTapped() {
    }
    
    private func setupGradient() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [UIColor.systemPink.cgColor, UIColor.systemCyan.cgColor]
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
}

