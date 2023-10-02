//
//  ViewController.swift
//  AboutMeApp
//
//  Created by Irina Muravyeva on 02.10.2023.
//

import UIKit

class LoginViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    let userName = "User"
    let password = "111"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarVC = segue.destination as? UITabBarController else { return }
        guard let viewController = tabBarVC.viewControllers else { return }
        if let welcomeVC = viewController[0] as? WelcomeViewController {
            welcomeVC.userName = userNameTF.text
        }
    }

    // MARK: - IBActions    
    @IBAction func forgotUserNameButtonDidTap() {
        let alert = UIAlertController(title: "Oops!", message: "Your name is User 😉", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        present(alert, animated: true)
    }
    @IBAction func forgotPasswordButtonTapped() {
        let alert = UIAlertController(title: "Oops!", message: "Your password is 111 😉", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        present(alert, animated: true)
    }
    
    @IBAction func logInButtonTapped() {
        
    }
    
    // MARK: - Private methods

}

