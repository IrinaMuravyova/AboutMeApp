//
//  ViewController.swift
//  AboutMeApp
//
//  Created by Irina Muravyeva on 02.10.2023.
//

import UIKit

final class LoginViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    private let user = User.getUser()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameTF.text = user.login
        passwordTF.text = user.password
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarVC = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarVC.viewControllers else { return }
        
        viewControllers.forEach { viewController in
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.user = user
            } else if let navigationVC = viewController as? UINavigationController {
                guard let personVC = navigationVC.topViewController as? PersonViewController else { return }
                personVC.user = user
            } else if let experienceVC = viewController as? ExperienceViewController {
                experienceVC.user = user
            }}
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }

    // MARK: - IBActions
    @IBAction func unwind(for segue: UIStoryboardSegue, sender: Any?){
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    @IBAction func forgotUserNameButtonDidTap() {
        sendAlert(withTitle: "Oops!",
                  andText: "Your name is \(user.login) 😉")
    }
    
    @IBAction func forgotPasswordButtonTapped() {
        sendAlert(withTitle: "Oops!",
                  andText: "Your password is \(user.password) 😉")
    }
    
    @IBAction func logInButtonTapped() {
        guard userNameTF.text == user.login, passwordTF.text == user.password else {
            sendAlert(withTitle: "Invalid login or password",
                      andText: "Please, enter correct login and password",
                      textField: passwordTF)
            return
        }
    }
    
    // MARK: - Private methods
    private func sendAlert(withTitle tittle: String, andText text: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: tittle, message: text, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default){
            _ in textField?.text = ""
        })
        present(alert, animated: true)
    }
}

