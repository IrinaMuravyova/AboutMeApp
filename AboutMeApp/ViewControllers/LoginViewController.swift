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
    
    private let userName = "User"
    private let password = "111"
    
    // подготовка ViewController к переходу (инициализируем экземпляр класса и передаем в публичные свойства данные)
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarVC = segue.destination as? UITabBarController else { return }
        guard let viewController = tabBarVC.viewControllers else { return }
        if let welcomeVC = viewController.first as? WelcomeViewController {
            welcomeVC.userName = userNameTF.text
        }
    }
    
    // Метод для скрытия клавиатуры тапом по экрану
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
//        userNameTF.resignFirstResponder()
//        passwordTF.resignFirstResponder()
        view.endEditing(true)
    }

    // MARK: - IBActions
    @IBAction func unwind(for segue: UIStoryboardSegue, sender: Any?){
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    @IBAction func forgotUserNameButtonDidTap() {
        sendAlert(withTitle: "Oops!", andText: "Your name is \(userName) 😉")
    }
    
    @IBAction func forgotPasswordButtonTapped() {
        sendAlert(withTitle: "Oops!", andText: "Your password is \(password) 😉")
    }
    
    @IBAction func logInButtonTapped() {
        guard userNameTF.text == userName, passwordTF.text == password else {
            sendAlert(withTitle: "Invalid login or password",
                      andText: "Please, enter correct login and password",
                      textField: passwordTF)
            return
        }
        // у нас переход напрямую от кнопки, поэтому, если логин/пароль верные, то срабатывает prepare и выполняется переход
        // если сработает alert, то выдет warning сообщение о том, что alert прервал выполнение prepare.
        // чтобы такого конфликта не было, нужно:
        //по нажатию на кнопку делать валидацию данных, а не выполнять переход. И, если данные валидны, то тогде мы делаем переход программно.
        //1. удаляем сигвей от кнопки
        //2. добавляем переход от ViewController (выделяем  ViewController и от него тащим курсор на след.экран, выбираем PresentModally)
        //3. Задаем segue идентификатор, чтобы потом программно можно было сказать в какой момент по нему переходить (showWelcomeVC)
        //4. В экшене logInButtonTapped после guar вызываем метод perfomeSegue(withIdentfier: "showWelcomeVC", sender: nil)
        // sender - может быть нил или можно сюда непосредственно передавать данные и этот sender станет доступным в методе prepare(for segue:)
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

