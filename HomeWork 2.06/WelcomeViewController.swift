//
//  WelcomeViewController.swift
//  HomeWork 2.06
//
//  Created by Alex Novoseltsev on 02.10.2022.
//

import UIKit

final class WelcomeViewController: UIViewController {

    
    @IBOutlet var logOutButton: UIButton!
    @IBOutlet var helloLable: UILabel!
    
    var accountName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        helloLable.text = "Hello, " + accountName + "!"
    }
}
