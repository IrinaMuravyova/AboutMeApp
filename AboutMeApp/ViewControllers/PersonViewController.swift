//
//  PersonViewController.swift
//  AboutMeApp
//
//  Created by Irina Muravyeva on 03.10.2023.
//

import UIKit

final class PersonViewController: UIViewController {

    @IBOutlet var aboutPersonLabel: UILabel!
    @IBOutlet var personPhotoIV: UIImageView!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = user.person.fullName
        let image = UIImage(named: user.person.photo)
        personPhotoIV.image = image
        personPhotoIV.layer.cornerRadius = view.frame.height/7.8
        setupGradient()
        aboutPersonLabel.text = user.person.about
        aboutPersonLabel.textColor = .white
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let bioVC = segue.destination as? BioViewController else { return }
        bioVC.personsBio = user.person.bio
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
