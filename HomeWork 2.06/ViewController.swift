//
//  ViewController.swift
//  HomeWork 2.06
//
//  Created by Alex Novoseltsev on 02.10.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var nameField: UITextField!
    @IBOutlet var passwordField: UITextField!
    
    private let user = "User"
    private let password = "Password"
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        nameField.autocorrectionType = .no
        passwordField.autocorrectionType = .no
        passwordField.isSecureTextEntry = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else {return}
        welcomeVC.accountName = nameField.text
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    @IBAction func loginPressed() {
        guard nameField.text == user, passwordField.text == password else {
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
        showAlert(title: "Oops! 🥴", message: "Your name is \(user)") :
        showAlert(title: "Oops! 🥴", message: "Your password is \(password)")
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

