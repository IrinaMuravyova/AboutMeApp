//
//  BioViewController.swift
//  AboutMeApp
//
//  Created by Irina Muravyeva on 04.10.2023.
//

import UIKit

class BioViewController: UIViewController {
    // MARK: - IBOutlet
    @IBOutlet var personsBioTV: UITextView!
    var personsBio: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.setupGradient()
        personsBioTV.text = personsBio
    }
}
