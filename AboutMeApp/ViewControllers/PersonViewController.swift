//
//  PersonViewController.swift
//  AboutMeApp
//
//  Created by Irina Muravyeva on 03.10.2023.
//

import UIKit

final class PersonViewController: UIViewController {

    @IBOutlet var aboutPersonLabel: UILabel!
    @IBOutlet var personPhotoIV: UIImageView! {
        didSet {
            personPhotoIV.layer.cornerRadius = personPhotoIV.frame.height / 2
        }
    }
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = user.person.fullName
        let image = UIImage(named: user.person.photo)
        personPhotoIV.image = image
        
        view.setupGradient()
        aboutPersonLabel.text = user.person.about
        aboutPersonLabel.textColor = .white
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let bioVC = segue.destination as? BioViewController else { return }
        bioVC.personsBio = user.person.bio
    }
}
