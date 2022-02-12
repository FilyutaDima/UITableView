//
//  PersonDetailDataVC.swift
//  UITableView
//
//  Created by Dmitry on 12.02.22.
//

import UIKit

class PersonDetailDataVC: UIViewController {
    var person: Person?
    
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let person = person else {
            return
        }

        phoneLabel.text = person.phone
        emailLabel.text = person.email
        navigationItem.title = "\(person.name) \(person.surname)"
    }
}
