//
//  WelcomeViewController.swift
//  HomeWork 2.06
//
//  Created by Alex Novoseltsev on 02.10.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var logOutButton: UIButton!
    @IBOutlet var helloLable: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        view.addVerticalGradientLayer()
        helloLable.text = "Hello, \(user.person.fullName)!"
    }
}
