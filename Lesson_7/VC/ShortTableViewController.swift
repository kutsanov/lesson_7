//
//  ShortTableViewController.swift
//  Lesson_7
//
//  Created by Vova Kutsanov on 17.03.2020.
//  Copyright © 2020 Vova Kutsanov. All rights reserved.
//

import UIKit

class ShortTableViewController: UITableViewController {
    
    let contacts = ContactBook.lstContact()


    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellShort", for: indexPath)

        cell.textLabel?.text = contacts[indexPath.row].fullName()

        return cell
    }

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else {return}
        let vcDetail = segue.destination as! DetailViewController
        let contact = contacts[indexPath.row]
        vcDetail.contact = contact
    }

}
