//
//  LongTableViewController.swift
//  Lesson_7
//
//  Created by Vova Kutsanov on 17.03.2020.
//  Copyright © 2020 Vova Kutsanov. All rights reserved.
//

import UIKit

class LongTableViewController: UITableViewController {
    
    let contacts = ContactBook.lstContact()

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return contacts.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return contacts[section].fullName()
    }
    
/*
алгоритм
     1 По ID секции берем контакт
     2 по номеру ячейки создаем строку (телефон или мыло)
     3 заносим строку в ячейку
*/
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let contact = contacts[indexPath.section]
        var str = ""
        switch indexPath.row {
            case 0:
                str = "телефон: \(contact.phone)"
            case 1:
                str = "e-mail: \(contact.email)"
        default:
            str = ""
        }
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellLong", for: indexPath)

        cell.textLabel?.text = str

        return cell
    }
}
