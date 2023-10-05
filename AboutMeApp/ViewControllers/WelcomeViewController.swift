//
//  WelcomeViewController.swift
//  AboutMeApp
//
//  Created by Irina Muravyeva on 02.10.2023.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.setupGradient()
        welcomeLabel.textColor = .white
        welcomeLabel.text = "Welcome, \(user.person.firstName ??  "")!"
    }
}

