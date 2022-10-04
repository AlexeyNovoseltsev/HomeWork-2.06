//
//  WelcomeViewController.swift
//  HomeWork 2.06
//
//  Created by Alex Novoseltsev on 02.10.2022.
//

import UIKit

final class WelcomeViewController: UIViewController {

    @IBOutlet var accountNameField: UITextField!
    @IBOutlet var logOutButton: UIButton!
    @IBOutlet var helloLable: UILabel!
    
    var accountName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        accountNameField.text = accountName
        helloLable.text = "Hello, " + accountName + "!"
        
    }
}
