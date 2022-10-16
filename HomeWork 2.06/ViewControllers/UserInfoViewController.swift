//
//  UserInfoViewController.swift
//  HomeWork 2.06
//
//  Created by Alex Friend on 15.10.2022.
//

import UIKit
class UserInfoViewController: UIViewController {
    
    @IBOutlet var photoImage: UIImageView! {
        didSet {
            photoImage.layer.cornerRadius = photoImage.frame.height / 2
        }
    }
    
    @IBOutlet var nameLable: UILabel!
    @IBOutlet var surnameLable: UILabel!
    @IBOutlet var jobLable: UILabel!
    @IBOutlet var departmentLable: UILabel!
    @IBOutlet var jobTitleLable: UILabel!
  
    
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer()
        photoImage.image = UIImage(named: user.person.photo)
        title = user.person.fullName
        nameLable.text = user.person.name
        surnameLable.text = user.person.surname
        jobLable.text = user.person.job.title
        departmentLable.text = user.person.job.department.rawValue
        jobTitleLable.text = user.person.job.jobTitle.rawValue
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let imageVC = segue.destination as? UserBioViewController else {return}
        imageVC.user = user
    }
}
