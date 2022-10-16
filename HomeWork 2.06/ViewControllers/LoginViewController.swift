//
//  ViewController.swift
//  HomeWork 2.06
//
//  Created by Alex Novoseltsev on 02.10.2022.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var nameField: UITextField!
    @IBOutlet var passwordField: UITextField!
    
    private let user = User.getUserData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameField.text = user.login
        passwordField.text = user.password
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else {
            return
        }
        guard let viewControllers = tabBarController.viewControllers else {
            return
        }
        
        viewControllers.forEach {
            if let welcomeVC = $0 as? WelcomeViewController {
                welcomeVC.user = user
            } else if let navigationVC = $0 as? UINavigationController {
                let userInfoVC = navigationVC.topViewController
                guard let userInfoVC = userInfoVC as? UserInfoViewController else {
                    return
                }
                userInfoVC.user = user
            }
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    @IBAction func loginPressed() {
        guard nameField.text == user.login,
              passwordField.text == user.password else {
            showAlert(
                title: "Invalid login or password ⛔️",
                message: "Please, enter correct login and password",
                textField: passwordField
            )
            return
        }
        performSegue(withIdentifier: "showWelcomeVC", sender: nil)
    }
    
    @IBAction func forgotRegisterData(_ sender: UIButton) {
        sender.tag == 0 ?
        showAlert(title: "Oops! 🥴", message: "Your name is \(user.login)") :
        showAlert(title: "Oops! 🥴", message: "Your password is \(user.password)")
    }
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        nameField.text = ""
        passwordField.text = ""
    }
    
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
        
    }
    
}

