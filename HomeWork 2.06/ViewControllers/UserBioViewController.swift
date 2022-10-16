//
//  UserBioViewController.swift
//  HomeWork 2.06
//
//  Created by Alex Friend on 15.10.2022.
//


import UIKit

class UserBioViewController: UIViewController {
   
    @IBOutlet var userBioTextView: UITextView!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer()
        title = "\(user.person.fullName) Bio"
        userBioTextView.backgroundColor = .clear
        userBioTextView.textColor = .white
        userBioTextView.text = user.person.bio
    }
}
