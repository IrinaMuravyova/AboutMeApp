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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        personPhotoIV.layer.cornerRadius = view.frame.height/7.8
        setupGradient()
        aboutPersonLabel.text = "Привет 🫰! Меня зовут Ирина" +
        "\n\nЯ закончила крупнейший ВУЗ Урала по специальности Математика.Компьютерные науки" +
        "\n\nОбожаю учиться и все анализировать!" +
        "\n\nВ детстве строила выкройку фартука расчитывая логорифмы 😂" +
        "\n\n8 лет живу в южном Китае" +
        "\n15 лет в счастливом браке, мама дочки-дошколеночка 👧"
        aboutPersonLabel.textColor = .white
    }
    
    private func setupGradient() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [UIColor.systemPink.cgColor, UIColor.systemCyan.cgColor]
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
}
