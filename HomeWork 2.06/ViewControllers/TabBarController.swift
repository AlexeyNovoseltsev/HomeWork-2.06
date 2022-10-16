//
//  TabBarController.swift
//  HomeWork 2.06
//
//  Created by Alex Friend on 15.10.2022.
//
import UIKit

class TabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let appearance = UITabBarAppearance()
        tabBar.standardAppearance = appearance
        tabBar.scrollEdgeAppearance = appearance
    }
}
