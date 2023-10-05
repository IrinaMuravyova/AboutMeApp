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
    
    var fullNameOfPerson: String!
    var aboutPerson: String!
    var personBio: String!
    var photoName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = fullNameOfPerson
        let image = UIImage(named: photoName)
        personPhotoIV.image = image
        personPhotoIV.layer.cornerRadius = view.frame.height/7.8
        setupGradient()
        aboutPersonLabel.text = aboutPerson
        aboutPersonLabel.textColor = .white
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let bioVC = segue.destination as? BioViewController else { return }
        bioVC.personsBio = personBio
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
