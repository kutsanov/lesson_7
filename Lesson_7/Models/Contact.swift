//
//  Contacts.swift
//  Lesson_7
//
//  Created by Vova Kutsanov on 17.03.2020.
//  Copyright © 2020 Vova Kutsanov. All rights reserved.
//

struct Contact {
    // Имя
    let name_i: String
    
    // Фамилия
    let name_f: String
    
    // Телефон
    let phone: String
    
    //e-mail
    let email: String
    
    func fullName() -> String {
        "\(name_f) \(name_i)"
    }
}


