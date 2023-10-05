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
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.setupGradient()
        experienceLabel.text = user.person.experience
    }
}
