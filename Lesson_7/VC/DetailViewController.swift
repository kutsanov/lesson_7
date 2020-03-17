//
//  DetailViewController.swift
//  Lesson_7
//
//  Created by Vova Kutsanov on 17.03.2020.
//  Copyright © 2020 Vova Kutsanov. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet var olNameF: UILabel!
    @IBOutlet var olNameI: UILabel!
    @IBOutlet var olPhone: UILabel!
    @IBOutlet var olEmail: UILabel!
    
    var contact: Contact!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        olNameF.text = contact.name_f
        olNameI.text = contact.name_i
        olPhone.text = contact.phone
        olEmail.text = contact.email
    }

}
