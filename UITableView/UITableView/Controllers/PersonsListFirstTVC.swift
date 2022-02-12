//
//  ListPersonsTVC.swift
//  UITableView
//
//  Created by Dmitry on 9.02.22.
//

import UIKit

class PersonsListFirstTVC: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        self.clearsSelectionOnViewWillAppear = false
        self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataSource.names.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        cell.textLabel?.text = "\(DataSource.names[indexPath.row]) \(DataSource.surnames[indexPath.row])"
        cell.layoutMargins = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        
        return cell
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }

    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }

    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            DataSource.names.remove(at: indexPath.row)
            DataSource.surnames.remove(at: indexPath.row)
            DataSource.emails.remove(at: indexPath.row)
            DataSource.phones.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)

        } else if editingStyle == .insert {
            
        }
    }

    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        let currentPersonName = DataSource.names.remove(at: fromIndexPath.row)
        let currentPersonSurname = DataSource.surnames.remove(at: fromIndexPath.row)
        let currentPersonEmail = DataSource.emails.remove(at: fromIndexPath.row)
        let currentPersonPhone = DataSource.phones.remove(at: fromIndexPath.row)

        DataSource.names.insert(currentPersonName, at: to.row)
        DataSource.surnames.insert(currentPersonSurname, at: to.row)
        DataSource.emails.insert(currentPersonEmail, at: to.row)
        DataSource.phones.insert(currentPersonPhone, at: to.row)
//        tableView.reloadData() ??????
    }

    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let indexPath = tableView.indexPathForSelectedRow,
           let destVC = segue.destination as? PersonDetailDataVC {
            
            let person = Person(name: DataSource.names[indexPath.row],
                                surname: DataSource.surnames[indexPath.row],
                                phone: DataSource.phones[indexPath.row],
                                email: DataSource.emails[indexPath.row])
            
            destVC.person = person
        }
    }
}
